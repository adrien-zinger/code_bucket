#ifndef HEADER_PRIV_REAGIR
#define HEADER_PRIV_REAGIR

#include <pthread.h>
#include "reduc.h"

#define __QUEUE_MAX_LEN 42
#define __MAP_LEN 1024

struct __Entry;
struct Reaction;
struct PrivReaction;

struct __Entry
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
    pthread_cond_t __push_condvar;
    pthread_cond_t __pop_condvar;
    pthread_mutex_t __mutex;
    char __queue_len;
    char __push_ptr;
    char __pop_ptr;
    struct __Entry __queue[__QUEUE_MAX_LEN];
};

struct PrivReaction
{
    struct Reaction pub;
    struct Reagir *__re;
    void *(*__reducer)(void *state, void *action);
};

#endif