
#include <stdarg.h>
#include <stdlib.h>

#pragma once

// TODO: put private structures into a private header
struct __Entry
{
    struct Reagir *re;
    void *arg;
};

#define __QUEUE_MAX_LEN 42
#define __MAP_LEN 1024

/**
 * Structure `Reagir`, contient mon état ainsi que tout le nécéssaire pour
 * appeler la fonction dispatch. Elle contient aussi un pointeur vers l'état
 * "actuel". Attention, lors de la mise à jour de cet état, il est possible
 * d'avoir des situations où des threads lisent/écrivent cet état.
 *
 * Je guarde l'idée de pouvoir accèder de façon propre à l'état avec une
 * méthode non bloquante pour plus tard.
 *
 * On peut créer cette structure grâce aux fonction `use_state` et
 * `use_reducer`.
 */
struct Reagir
{
    void *state;
    void *(*__reducer)(void *state, void *action);
    pthread_cond_t __push_condvar;
    pthread_cond_t __pop_condvar;
    pthread_mutex_t __mutex;
    char __queue_len;
    char __push_ptr;
    char __pop_ptr;
    struct __Entry __queue[__QUEUE_MAX_LEN];
};

/**
 * Trigger la machine à état en ajoutant à la file d'attente une mise
 * à jour à éffectuer. Si j'ai créé ma structure Reagir avec un réduceur,
 * l'argument `arg` est une action. Sinon, c'est le nouvel état que je
 * donne.
 */
void dispatch(struct Reagir *reduc, void *arg);

/**
 * Je créer une nouvelle structure Reagir.
 *
 * Return a Reduc object containing the latest state pointer
 * (the initial pointer if you choose the static method).
 */
struct Reagir *
use_state(void *(*init)());

struct Reagir *
use_reducer(void *(*reducer)(void *state, void *action), void *(*init)());

struct ReagirOpt
{
    void (*on_state_change)(void **dst, void **src);
};

/**
 * Create a new runtime that call the handler each time
 * a dispatch is call.
 */
void create(struct Reagir *(*r)(void), ...);