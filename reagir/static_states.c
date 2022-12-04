#include <stdio.h>   /* printf, scanf */
#include <pthread.h> /* pthread_* */
#include <string.h>  /* memset, memcpy, memcmp */

#include "lib/reagir.h"

struct State
{
    char *val;
    int count;
    int (*before)(struct State *self);
    void (*step)(struct State *self);
    pthread_t scan;
};

int before(struct State *self)
{
    static const char *EXIT_KEYWORD = "exit"; // 1
    if (0 == memcmp(self->val, EXIT_KEYWORD, strlen(EXIT_KEYWORD)))
        return 1;
    pthread_detach(self->scan); // 2
    return 0;
}

int zero(struct State *self)
{
    self->before = before;
    return 0;
}

void counted_print(struct State *self)
{
    printf("you wrote: %s\nCan you write something else? (%i)\n",
           self->val,
           ++(self->count));
}

void next_print(struct State *self)
{
    printf("you wrote: %s\nCan you write something else?\n", self->val);
    self->count = 1;
    self->step = counted_print;
}

void first_print(struct State *self)
{
    printf("waiting for an entry\n");
    self->step = next_print;
}

void *scan(void *_rea)
{
    struct Reaction *rea = (struct Reaction *)_rea;
    struct State *st = (struct State *)rea->state;
    int _ = scanf("%299s", st->val);
    dispatch(rea, st);
}

void async_scan(struct Reaction *re)
{
    pthread_t th;
    pthread_create(&th, NULL, scan, re);
    ((struct State *)re->state)->scan = th;
}

void *make_init_state()
{
    static char val[300] = {'\0'};
    static struct State st = {
        val,
        0,
        zero,
        first_print,
        0,
    };
    return &st;
}

int state_machine()
{
    struct Reaction *re = use_state(make_init_state);
    struct State *st = re->state;
    if (st->before(st) == 1)
    {
        void *_;
        pthread_join(st->scan, _);
        return EXIT_SM;
    }
    st->step(st);
    async_scan(re);
    return CONTINUE_SM;
}

void main(void)
{
    create(state_machine, NULL);
}