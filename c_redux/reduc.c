#include <pthread.h> /* pthread_* */
#include <stdlib.h>  /* malloc */
#include <stdarg.h>  /* va_list, ... */

#include "./reduc.h"

static struct Reagir *map_reduc[__MAP_LEN] = {NULL};

static void send_state(struct Reagir *re, struct __Entry e)
{
    pthread_mutex_lock(&re->__mutex);
    while (re->__queue_len == __QUEUE_MAX_LEN)
        pthread_cond_wait(&re->__pop_condvar, &re->__mutex);
    re->__queue[re->__push_ptr] = e;
    re->__push_ptr = (re->__push_ptr + 1) % __QUEUE_MAX_LEN;
    re->__queue_len++;
    pthread_cond_signal(&re->__push_condvar);
    pthread_mutex_unlock(&re->__mutex);
}

static struct __Entry receive_state(struct Reagir *re)
{
    pthread_mutex_lock(&re->__mutex);
    while (re->__queue_len == 0)
        pthread_cond_wait(&re->__push_condvar, &re->__mutex);
    struct __Entry e = re->__queue[re->__pop_ptr];
    re->__pop_ptr = (re->__pop_ptr + 1) % __QUEUE_MAX_LEN;
    re->__queue_len--;
    pthread_cond_signal(&re->__pop_condvar);
    pthread_mutex_unlock(&re->__mutex);
    return e;
}

void dispatch(struct Reagir *re, void *arg)
{
    struct __Entry e = {re, arg};
    send_state(re, e);
}

static void *use_state_reducer(void *_, void *state)
{
    return state;
}

struct Reagir *
use_state(void *(*init)())
{
    return use_reducer(use_state_reducer, init);
}

static struct Reagir *new_reduc(
    void *(*reducer)(void *state, void *action),
    void *init)
{
    struct Reagir *re = malloc(sizeof(struct Reagir));
    re->state = init;
    re->__reducer = reducer;
    pthread_mutex_init(&re->__mutex, NULL);
    pthread_cond_init(&re->__pop_condvar, NULL);
    re->__pop_ptr = 0;
    pthread_cond_init(&re->__push_condvar, NULL);
    re->__push_ptr = 0;
    re->__queue_len = 0;
    return re;
}

struct Reagir *
use_reducer(void *(*reducer)(void *state, void *action), void *(*init)())
{
    // FIXME, create real map with linked lists to avoid collisions
    int i = (int)((unsigned long)init % __MAP_LEN);
    if (map_reduc[i] == NULL)
        map_reduc[i] = new_reduc(reducer, init());
    return map_reduc[i];
}

/**
 * Fonction de changement d'état par défault.
 *
 * Si je me mets à écouter des entrées asynchrones qui peuvent utiliser mon
 * état à tout moment de mon execution, ce petit bout est très critique. Car
 * deux threads pourraient accéder à mon état parrallèlement, pendant que l'un
 * change le pointeur. Ce serait une source de bugs du genre du ABA, des
 * mauvais calculs, etc.
 *
 * L'exemple suivant montre une façon simple  de proteger mon état contre des
 * accès simultanés. Evidemment, chaque cas à sa spécificité. Pour mon exemple
 * je n'en ai pas besoin.
 *
 * Ex:
 * ```
 * void *locker(void *_, void *new_state)
 * {
 *     lock(&state_mutex);
 *     return new_state;
 * }
 *
 * struct Reagir re = use_reducer(locker, initializer);
 *
 * ...
 *
 * void my_on_state_change(void *dst, void *src)
 * {
 *     dst = src;
 *     unlock(&state_mutex);
 * }
 *
 * ...
 *
 * struct ReagirOpt opt;
 * opt.on_state_change = my_on_state_change;
 * create(state_machine, opt);
 * ```
 *
 * Si je souhaite utiliser des état sur ma pile au lieu de mon tas, c'est une
 * source de fuite mémoire possible. Ou bien on nétoie parrallèlement, ou bien
 * je redefinis cette fonction.
 *
 * Ex:
 * ```
 * void my_on_state_change(void *dst, void *src)
 * {
 *     void *tmp = dst;
 *     dst = src;
 *     free(tmp);
 * }
 *
 * ...
 *
 * struct ReagirOpt opt;
 * opt.on_state_change = my_on_state_change;
 * create(state_machine, opt);
 * ```
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

void create(struct Reagir *(*r)(void), ...)
{
    va_list args;
    va_start(args, r);
    struct ReagirOpt opt = va_arg(args, struct ReagirOpt);
    va_end(args);

    if (opt.on_state_change == NULL)
        opt.on_state_change = on_state_change;

    while (1)
    {
        struct Reagir *re = r();
        if (NULL == re)
            break;
        struct __Entry e = receive_state(re);
        void *new_state = re->__reducer(re->state, e.arg);
        opt.on_state_change(&re->state, &new_state);
    }
}
