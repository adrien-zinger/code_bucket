// Intent to make the same behavior of redux/react
// in C. The target is to show a generic method to
// visualise the pattern of a state machine in multiple
// languages.

#include <stdio.h>   /* printf, scanf */
#include <pthread.h> /* pthread_* */
#include <string.h>  /* memset, memcpy, memcmp */

#include "reduc.h" /* State, Reduc, dispatch, create */

/**
 * Etat de ma machine. Je concerve une chaine de caractères qui est celle que
 * je viens de lire avec un scan. Un compteur juste pour l'example où je compte
 * le nombre d'état par lesquels je suis passé.
 *
 * Une étape (step) qui me décris ce que ma machine à états est censée faire,
 * autre que les executions génériques qui peuvent être résumé en
 * "avant/après chaque". Le principe réside du fait que l'état definisse le
 * comportement.
 *
 * Juste pour la précision, par exemple si on fait une application
 * en React. Je veux afficher telle ou telle composant en fonction de mon
 * "state". Et bien je ne fait pas:
 *
 * if (state.composant == 1)
 *  return composant1();
 * else if (state.composant == 2)
 *  return composant2();
 * ...
 *
 * Non, je dis que mon état EST mon composant, en quelque sorte et celà donne:
 *
 * return state.composantActuel();
 *
 * En fait, au préalable, j'ai ajouté un pointeur vers le composant qui va
 * bien pour l'état que je souhaite afficher. Donc composantActuel est un
 * pointeur sur fonction que je dois gérer avec les différents états de ma
 * machine. C'est une forme de généricité comme une autre en bref.
 *
 * A noter que de cette manière, on est ussi en mesure d'éviter des branchages
 * de `if` très naturellement.
 */
struct State
{
    char *val;
    int count;
    int (*before)(struct State *self);
    void (*step)(struct State *self);
    pthread_t scan;
};

/**
 * 1. On verifie si l'utilisateur à écrit quelque chose qui commence par
 * "exit". Si oui, on retourne une valeur positive afin de quiter le
 * programme après un petit nétoyage.
 *
 * 2. On laisse le thread de scan précédent se finir tranquillement en tâche
 * de fond.
 */
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

/**
 * Dernier état de ma machine, j'ai déjà affiché le composant de `next_print`
 * et de `first_print`.
 *
 * Ici je boucle sur ce composant, pas de mise à jour de fonction.
 * J'update le compteur.
 */
void counted_print(struct State *self)
{
    printf("you wrote: %s\nCan you write something else? (%i)\n",
           self->val,
           ++(self->count));
}

/**
 * Deuxième état de ma machine. J'affiche le buffer récédent, une petite
 * phrase.
 *
 * mise à jour avant de passer à l'état décrit par la fonction
 * `counted_print`. J'initialise le compteur.
 */
void next_print(struct State *self)
{
    printf("you wrote: %s\nCan you write something else?\n", self->val);
    self->count = 1;
    self->step = counted_print;
}

/**
 * Premier état, initialement, de ma machine à état.
 *
 * mise à jour avant de passer à l'état décrit par la fonction
 * `next_print`.
 */
void first_print(struct State *self)
{
    printf("waiting for an entry\n");
    self->step = next_print;
}

/**
 * Lit une entrée de la console de moins de 300 caractères. (limite imposée
 * par ma structure State)
 *
 * Met à jour directement mon état et lance un dispatch qui mettra à jour ma
 * machine à état.
 */
void *scan(void *_rea)
{
    struct Reaction *rea = (struct Reaction *)_rea;
    struct State *st = (struct State *)rea->state;
    int _ = scanf("%299s", st->val);
    dispatch(rea, st);
}

/**
 * Lancement d'un nouveau thread dont la destinée est de lire une entrée
 * de moins de 300 caractères. Voir la fonction `scan`;
 */
void async_scan(struct Reaction *re)
{
    pthread_t th;
    pthread_create(&th, NULL, scan, re);
    ((struct State *)re->state)->scan = th;
}

void *make_init_state()
{
    static char val[300] = {'\0'};
    // char *val;
    // int count;
    // int (*before)(struct State *self);
    // void (*step)(struct State *self);
    // pthread_t scan;
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
    printf("state_machine\n");
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