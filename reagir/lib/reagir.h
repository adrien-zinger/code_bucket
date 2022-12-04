#ifndef HEADER_REAGIR
#define HEADER_REAGIR

#include <stdarg.h>
#include <stdlib.h>

struct Reaction
{
    void *state;
};

#define EXIT_SM 0
#define CONTINUE_SM 1

/**
 * Trigger la machine à état en ajoutant à la file d'attente une mise
 * à jour à éffectuer. Si j'ai créé ma structure Reagir avec un réduceur,
 * l'argument `arg` est une action. Sinon, c'est le nouvel état que je
 * donne.
 */
void dispatch(struct Reaction *re, void *arg);

/**
 * Je créer une nouvelle structure Reagir.
 *
 * Return a Reduc object containing the latest state pointer
 * (the initial pointer if you choose the static method).
 */
struct Reaction *
use_state(void *(*init)());

struct Reaction *
use_reducer(void *(*reducer)(void *state, void *action), void *(*init)());

struct Opt
{
    void (*on_state_change)(void **dst, void **src);
};

/**
 * Create a new runtime that call the handler each time
 * a dispatch is call.
 */
void create(int (*state_machine)(void), struct Opt *opt);

#endif