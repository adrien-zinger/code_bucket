#include <pthread.h> /* pthread_* */
#include <stdlib.h>  /* malloc */
#include <stdarg.h>  /* va_list, ... */
#include <assert.h>  /* assert */

#include "./reagir.h"
#include "./priv_reagir.h" /* Entry,
                              Reagir,
                              PrivReaction,
                              MAP_LEN
                              QUEUE_MAX_LEN */

// FIXME: faire une vrai hashmap
static struct Reagir *map_reagirs[MAP_LEN] = {NULL};

static void send_state(struct Entry e)
{
    struct Reagir *re = e.rea->re;
    pthread_mutex_lock(&re->mutex);
    while (re->queue_len == QUEUE_MAX_LEN)
        pthread_cond_wait(&re->pop_condvar, &re->mutex);
    re->queue[re->push_ptr] = e;
    re->push_ptr = (re->push_ptr + 1) % QUEUE_MAX_LEN;
    re->queue_len++;
    pthread_cond_signal(&re->push_condvar);
    pthread_mutex_unlock(&re->mutex);
}

static struct Entry receive_state(struct Reagir *re)
{
    pthread_mutex_lock(&re->mutex);
    while (re->queue_len == 0)
        pthread_cond_wait(&re->push_condvar, &re->mutex);
    struct Entry e = re->queue[re->pop_ptr];
    re->pop_ptr = (re->pop_ptr + 1) % QUEUE_MAX_LEN;
    re->queue_len--;
    pthread_cond_signal(&re->pop_condvar);
    pthread_mutex_unlock(&re->mutex);
    return e;
}

void dispatch(struct Reaction *rea, void *arg)
{
    struct Entry e = {(struct PrivReaction *)rea, arg};
    send_state(e);
}

static void *use_state_reducer(void *_, void *state)
{
    return state;
}

struct Reaction *
use_state(void *(*init)())
{
    return use_reducer(use_state_reducer, init);
}

struct PrivReaction *new_reaction(
    void *init,
    struct Reagir *re,
    void *(*reducer)(void *, void *))
{
    struct PrivReaction *ret = malloc(sizeof(struct PrivReaction));
    ret->pub.state = init;
    ret->re = re;
    ret->reducer = reducer;
    return ret;
}

static struct Reaction *get_reaction(
    void *(*reducer)(void *state, void *action),
    void *(*init)())
{
    unsigned long reid = pthread_self();
    int i = (int)((unsigned long)reid % MAP_LEN);
    assert(map_reagirs[i] != NULL); // fires if no Reagir the thread

    struct Reagir *re = map_reagirs[i];
    if (re->len > re->i)
        return &re->content[re->i++]->pub;

    if (re->capacity == re->len)
    {
        re->capacity *= 2;
        re->content = realloc(
            re->content,
            sizeof(struct PrivReaction *) * re->capacity);
    }

    struct PrivReaction *rea = new_reaction(init(), re, reducer);
    re->content[re->i] = rea;
    re->len++;
    re->i++;
    return &rea->pub;
}

/**
 * Creer une reaction de avec une fonction de reduction.
 */
struct Reaction *
use_reducer(void *(*reducer)(void *state, void *action), void *(*init)())
{
    return get_reaction(reducer, init);
}

/**
 * Fonction de changement d'état par défault.
 *
 * Par defaut, je ne libère pas la mémoire et on je n'utilise
 * pas de mutex pour me proteger des races dans la lib. Je me
 * laisse la liberté d'utiliser des variables statiques ou des constantes.
 *
 */
static void on_state_change(void **dst, void **src)
{
    *dst = *src;
}

struct Reagir *new_reagir(unsigned long id)
{
    struct Reagir *re = malloc(sizeof(struct Reagir));
    re->capacity = 4;
    re->len = 0;
    re->content = malloc(re->capacity * sizeof(struct PrivReaction *));
    re->id = id;
    re->i = 0;
    pthread_mutex_init(&re->mutex, NULL);
    pthread_cond_init(&re->pop_condvar, NULL);
    re->pop_ptr = 0;
    pthread_cond_init(&re->push_condvar, NULL);
    re->push_ptr = 0;
    re->queue_len = 0;
    int i = (int)((unsigned long)id % MAP_LEN);
    map_reagirs[i] = re;
    return re;
}

void create(int (*state_machine)(void), struct Opt *_opt)
{
    struct Opt opt;
    if (_opt == NULL || _opt->on_state_change == NULL)
    {
        opt.on_state_change = on_state_change;
    }
    else
    {
        opt.on_state_change = _opt->on_state_change;
    }

    struct Reagir *re = new_reagir(pthread_self());

    while (state_machine())
    {
        re->i = 0;
        struct Entry e = receive_state(re);
        void *new_state = e.rea->reducer(e.rea->pub.state, e.arg);
        opt.on_state_change(&e.rea->pub.state, &new_state);
    }
    for (int i = 0; i < re->len; i++)
        free(re->content[i]);
    free(re->content);
    free(re);
}
