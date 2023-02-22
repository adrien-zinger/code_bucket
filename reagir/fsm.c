/*-=======================

Pour la petite introduction, cette implémentation vise a reproduire une machine
à état finie avec la librairie Reagir, décrite dans l'article TODO.

Certains points diffère des implémentations de main et de static_state. Bien
qu'elle y ressemble. Parmis ces points:

- Lecture asynchrone continue des évenement (entrée utilisateur dans ce cas)
- Abonnement aux évenements exterieurs
- (A voir) Possibilité de réorganisation des états si plusieurs évenement
  surviennent en un court laps de temps.

---=======================*/

#include <stdio.h>   /* printf, scanf */
#include <pthread.h> /* pthread_* */
#include <string.h>  /* memset, memcpy, memcmp */

#include "lib/reagir.h"
#include "lib/scanner.h"

/* =============================== */
/* Tableau d'évenements à l'écoute */
/* =============================== */

struct State;

struct State *hashmap[255] = {NULL};

// Attention, cette fonction de hashage ne doit pas etre utilisé dans une
// application. Tournez vous plutôt vers un algorithm comme celui de jenkins
// (que je ne connais pas par coeur). Ou bien celon vos besoins, utilisez une
// bibliothèque, ça sera encore mieux.
//
// Ici le besoin est purement didactique et n'a pas vocation à être mis en
// production. Je m'autorise l'imprécision. Celà-dit, si vous souhaitez
// améliorer cette partie du code, faites donc !
unsigned char hash(unsigned char *str)
{
    unsigned char hash = 0;
    for (int i = 0; i < 30 && str[i] != '\0'; ++i)
        hash += str[i];
    return hash % 255;
}

void onEvent(unsigned char *event, void *state)
{
    hashmap[hash(event)] = state;
}

void clearEvents()
{
    memset(hashmap, 0, sizeof(struct State *) * 255);
}

/* Reducer */

void *reducer(void *old_state, void *event)
{
    static char previous_event[30] = {'\0'};
    // Protection contre la reception du même evt plusieurs fois
    if (strcmp(previous_event, (char *)event) == 0)
    {
        free(event);
        return NULL;
    }
    void *state = hashmap[hash((unsigned char *)event)];
    if (state == NULL)
    {
        printf("unexpected event '%s'\n", (char *)event);
        free(event);
        return NULL;
    }
    memcpy(previous_event, event, 30);
    free(event);
    return state;
}

/* ============================ */
/* Les états et les transitions */
/* ============================ */

struct State
{
    char *val;
    void (*fn)(struct State *self);
};

void fn_state_A(struct State *self);
void fn_state_B(struct State *self);
void fn_state_C(struct State *self);
void fn_state_D(struct State *self);
void fn_state_E(struct State *self);

static char val[5] = {'\0'};
static struct State state_A = {val, fn_state_A};
static struct State state_B = {val, fn_state_B};
static struct State state_C = {val, fn_state_C};
static struct State state_D = {val, fn_state_D};
static struct State state_E = {val, fn_state_E};

void fn_state_A(struct State *self)
{
    printf("enter in step A\n");
    strcat(self->val, "A");
    onEvent("gotoB", &state_B);
    onEvent("gotoC", &state_C);
}

void fn_state_B(struct State *self)
{
    printf("enter in step B (%s)\n", self->val);
    strcat(self->val, "-B");
    onEvent("gotoD", &state_D);
}

void fn_state_C(struct State *self)
{
    printf("enter in step C (%s)\n", self->val);
    strcat(self->val, "-C");
    onEvent("gotoD", &state_D);
}

void fn_state_D(struct State *self)
{
    printf("enter in step D (%s)\n", self->val);
    memset(self->val, '\0', 4);
    onEvent("restart", &state_A);
    onEvent("stop", &state_E);
}

void fn_state_E(struct State *self)
{
    printf("quit fsm (%s)\n", self->val);
    self->val = NULL;
}

/*=====================================================*/
/*                                                     */
/*=====================================================*/

void *make_init_state()
{
    return &state_A;
}

int state_machine()
{
    static int once = 1;
    clearEvents();
    struct Reaction *re = use_reducer(reducer, make_init_state);
    if (once)
    {
        start_scan(re);
        once = 0;
    }
    struct State *st = re->state;
    st->fn(st);
    return st->val == NULL ? EXIT_SM : CONTINUE_SM;
}

void on_change(void **dst, void **src)
{
    if (*src == NULL)
        return;
    *dst = *src;
}

void main(void)
{
    struct Opt opt = {on_change};
    create(state_machine, &opt);
    printf("out\n");
    stop_scan();
}
