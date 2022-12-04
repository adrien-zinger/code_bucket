#ifndef HEADER_PRIV_REAGIR
#define HEADER_PRIV_REAGIR

#include <pthread.h>
#include "./reagir.h"

#define QUEUE_MAX_LEN 42
#define MAP_LEN 1024

struct Entry;
struct Reaction;
struct PrivReaction;

struct Entry
{
    struct PrivReaction *rea;
    void *arg;
};

struct Reagir
{
    struct PrivReaction **content;
    int len;
    int capacity;
    int i;

    unsigned long id;
    pthread_cond_t push_condvar;
    pthread_cond_t pop_condvar;
    pthread_mutex_t mutex;
    char queue_len;
    char push_ptr;
    char pop_ptr;
    struct Entry queue[QUEUE_MAX_LEN];
};

struct PrivReaction
{
    struct Reaction pub;
    struct Reagir *re;
    void *(*reducer)(void *state, void *action);
};

#endif