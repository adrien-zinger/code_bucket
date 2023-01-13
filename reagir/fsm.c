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

struct State
{
    char *val;
    int (*fn)(struct State *self);
};

static char val[5] = {'\0'};
static struct State state_A = {val, fn_state_A};
static struct State state_B = {val, fn_state_B};
static struct State state_C = {val, fn_state_C};
static struct State state_D = {val, fn_state_D};

void fn_state_A(struct State *self)
{
    printf("enter in step A (%s)\n", self->val);
    strcat(self->val, "A");
    onEvent("goto B", state_B);
    onEvent("goto C", state_C);
    dispatch
}

void fn_state_B(struct State *self)
{
    printf("enter in step B (%s)\n", self->val);
    strcat(self->val, "-B");
    onEvent("goto D", state_D);
}

void fn_state_C(struct State *self)
{
    printf("enter in step C (%s)\n", self->val);
    strcat(self->val, "-C");
    onEvent("goto D", state_D);
}

void fn_state_D(struct State *self)
{
    printf("enter in step D (%s-D)\n", self->val);
    memset(self->val, '\0', 4);
    onEvent("restart", state_A);
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
    struct Reaction *re = use_state(make_init_state);
    struct State *st = re->state;
    st->fn(st);
    return CONTINUE_SM;
}

void main(void)
{
    create(state_machine, NULL);
}