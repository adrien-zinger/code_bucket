/*-=======================



---=======================*/

#include <stdio.h>   /* printf, scanf */
#include <pthread.h> /* pthread_* */
#include <string.h>  /* memset, memcpy, memcmp */

#include "lib/reagir.h"

struct s_state;
struct s_clap;
struct s_hello_world;

struct s_clap
{
    char *first_hand;
    unsigned char state_first_hand;
    char *second_hand;
    unsigned char state_second_hand;
    void (*fn)(struct s_state *state);
};

struct s_hello_world
{
    char *var1;
    unsigned char state_var1;
    char *var2;
    unsigned char state_var2;
    void (*fn)(struct s_state *);
};

struct s_state
{
    struct s_clap *s_clap;
    struct s_hello_world *s_hello_world;
    void (*fn)(struct s_state *);
    void (*reduce)(struct s_state *state);
    unsigned char stop;
};

struct s_state *copy_state(struct s_state *);
struct s_clap *copy_clap(struct s_clap *);
struct s_hello_world *copy_hello_world(struct s_hello_world *);

void *empty(void *){};

struct s_state *copy_state(struct s_state *state)
{
    // todo Si je pouvais avoir une structure plus generique pour
    //      les différents états, je pourrais rendre ce code plus simple.
    // printf("copy state: %p\n\tclap: %p\n\thello_world: %p\n", state, state->s_clap, state->s_hello_world);
    struct s_state *cp = (struct s_state *)malloc(sizeof(struct s_state));
    cp->s_clap = copy_clap(state->s_clap);
    cp->s_hello_world = copy_hello_world(state->s_hello_world);
    cp->fn = state->fn;
    cp->stop = state->stop;
    cp->reduce = state->reduce;
    // printf("copied state: %p\n\tclap: %p\n\thello_world: %p\n", cp, cp->s_clap, cp->s_hello_world);
    return cp;
}

struct s_clap *copy_clap(struct s_clap *clap)
{
    struct s_clap *cp = (struct s_clap *)malloc(sizeof(struct s_clap));
    cp->state_first_hand = clap->state_first_hand;
    cp->state_second_hand = clap->state_second_hand;
    cp->fn = clap->fn;
    if (clap->first_hand != NULL)
    {
        cp->first_hand = (char *)malloc(strlen(clap->first_hand));
        strcpy(cp->first_hand, clap->first_hand);
    }
    if (clap->second_hand != NULL)
    {
        cp->second_hand = (char *)malloc(strlen(clap->second_hand));
        strcpy(cp->second_hand, clap->second_hand);
    }
    return cp;
}

struct s_hello_world *copy_hello_world(struct s_hello_world *hello_world)
{
    struct s_hello_world *cp = (struct s_hello_world *)malloc(sizeof(struct s_hello_world));
    cp->state_var1 = hello_world->state_var1;
    cp->state_var2 = hello_world->state_var2;
    cp->fn = hello_world->fn;
    if (hello_world->var1 != NULL)
    {
        cp->var1 = (char *)malloc(strlen(hello_world->var1));
        strcpy(cp->var1, hello_world->var1);
    }
    if (hello_world->var2 != NULL)
    {
        cp->var2 = (char *)malloc(strlen(hello_world->var2));
        strcpy(cp->var2, hello_world->var2);
    }
    return cp;
}

/* ============================ */
/* Les états et les transitions */
/* ============================ */

void step_1_clap(struct s_state *);
void step_2_clap(struct s_state *);
void step_3_clap(struct s_state *);
void step_1_hello_world(struct s_state *);
void step_1_main(struct s_state *);
void step_2_main(struct s_state *);
void step_3_main(struct s_state *);
void step_4_main(struct s_state *);

static struct s_state *s_state = NULL;

static struct Reaction *re = NULL;

void step_1_clap(struct s_state *state)
{
    printf("%s %s %s %s %s %s\n", "one", "hand", "doesnt", "make", "any", "sound");
    if (state->reduce == NULL)
        state->reduce = state->fn;
    if (state == s_state)
        state = copy_state(state);
    state->s_clap->fn = step_2_clap;
    state->fn = step_2_clap;
    dispatch(re, state);
}

void step_2_clap(struct s_state *state)
{
    if (state == s_state)
        state = copy_state(state);
    if (state->s_clap->state_first_hand == 1 && state->s_clap->state_second_hand == 1)
    {
        printf("%s %s\n", state->s_clap->first_hand, state->s_clap->second_hand);
        state->s_clap->fn = step_3_clap;
        state->fn = step_3_clap;
        dispatch(re, state);
    }
    else if (state->s_clap->state_first_hand == 2)
    {
        char *buffer = malloc(sizeof(char) * 30);
        printf("Please enter a value for the parameter \"%s\"\n", "first_hand");
        int _ = scanf("%29s", &buffer[0]);

        state->s_clap->first_hand = buffer;
        state->s_clap->state_first_hand = 1;
        step_2_clap(state);
    }
    else if (state->s_clap->state_second_hand == 2)
    {
        char *buffer = malloc(sizeof(char) * 30);
        printf("Please enter a value for the parameter \"%s\"\n", "second_hand");
        int _ = scanf("%29s", &buffer[0]);

        state->s_clap->second_hand = buffer;
        state->s_clap->state_second_hand = 1;
        step_2_clap(state);
    }
    else
    {
        state->fn = state->reduce;
        state->reduce = NULL;
        dispatch(re, state);
    }
}

void step_3_clap(struct s_state *state)
{
    if (state == s_state)
        state = copy_state(state);
    printf("%s %s %s\n", "without", "his", "pair");
    state->s_clap->fn = NULL;
    /* je ne sais pas encore si j'ai envie de
        détruire tout... et si oui, comment.*/
    state->fn = state->reduce;
    state->reduce = NULL;
    dispatch(re, state);
}

void step_1_hello_world(struct s_state *state)
{
    if (state->reduce == NULL)
        state->reduce = state->fn;
    if (state == s_state)
        state = copy_state(state);
    if (state->s_hello_world->state_var1 == 1 && state->s_hello_world->state_var2 == 1)
    {
        printf("%s %s\n", state->s_hello_world->var1, state->s_hello_world->var2);
        state->s_hello_world->fn = NULL;
        state->fn = state->reduce;
        state->reduce = NULL;
        dispatch(re, state);
    }
    else if (state->s_hello_world->state_var1 == 2)
    {
        char *buffer = malloc(sizeof(char) * 30);
        printf("Please enter a value for the parameter \"%s\"\n", "var1");
        int _ = scanf("%29s", &buffer[0]);

        state->s_hello_world->var1 = buffer;
        state->s_hello_world->state_var1 = 1;
        step_1_hello_world(state);
    }
    else if (state->s_hello_world->state_var2 == 2)
    {
        char *buffer = malloc(sizeof(char) * 30);
        printf("Please enter a value for the parameter \"%s\"\n", "var2");
        int _ = scanf("%29s", &buffer[0]);

        state->s_hello_world->var2 = buffer;
        state->s_hello_world->state_var2 = 1;
        step_1_hello_world(state);
    }
    else
    {
        state->fn = state->reduce;
        state->reduce = NULL;
        dispatch(re, state);
    }
}

void step_1_main(struct s_state *_state)
{
    struct s_state *state = copy_state(_state);
    state->fn = step_2_main;
    if (state->reduce == NULL)
        state->reduce = state->fn;
    state->s_clap->first_hand = "clap";
    state->s_clap->state_first_hand = 1;
    state->s_clap->fn(state);
}

void step_2_main(struct s_state *_state)
{
    struct s_state *state = copy_state(_state);
    state->fn = step_3_main;
    printf("%s \n", "suspens");
    dispatch(re, state);
}

void step_3_main(struct s_state *_state)
{
    struct s_state *state = copy_state(_state);
    state->fn = step_4_main;
    if (state->reduce == NULL)
        state->reduce = state->fn;
    state->s_clap->second_hand = "clap";
    state->s_clap->state_second_hand = 1;
    state->s_clap->fn(state);
}

void step_4_main(struct s_state *_state)
{
    struct s_state *state = copy_state(_state);
    state->fn = (void (*)(struct s_state *))empty;
    state->stop = 1;
    state->s_hello_world->state_var1 = 2;
    state->s_hello_world->state_var2 = 2;
    state->s_hello_world->fn(state);
}

/*=====================================================*/
/*                                                     */
/*=====================================================*/

void *make_init_state()
{
    struct s_clap *clap = (struct s_clap *)malloc(sizeof(struct s_clap));
    clap->fn = step_1_clap;
    clap->first_hand = NULL;
    clap->second_hand = NULL;
    clap->state_first_hand = 0;
    clap->state_second_hand = 0;
    struct s_hello_world *hello_world = (struct s_hello_world *)malloc(sizeof(struct s_hello_world));
    hello_world->fn = step_1_hello_world;
    hello_world->var1 = NULL;
    hello_world->var2 = NULL;
    hello_world->state_var1 = 0;
    hello_world->state_var2 = 0;
    s_state = (struct s_state *)malloc(sizeof(struct s_state));
    s_state->fn = step_1_main;
    s_state->s_clap = clap;
    s_state->s_hello_world = hello_world;
    s_state->stop = 0;
    return s_state;
}

int state_machine()
{
    re = use_state(make_init_state);
    struct s_state *st = re->state;
    st->fn(st);
    return st->stop ? EXIT_SM : CONTINUE_SM;
}

void on_change(void **dst, void **src)
{
    if (*dst == NULL)
        return;
    free(*dst);
    *dst = *src;
    s_state = *src;
}

void main(void)
{
    struct Opt opt = {on_change};
    create(state_machine, &opt);
}
