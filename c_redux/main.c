// Intent to make the same behavior of redux/react
// in C. The target is to show a generic method to
// visualise the pattern of a state machine in multiple
// languages.

#include <stdio.h>   /* printf, scanf */
#include <pthread.h> /* pthread_* */
#include <stdlib.h>  /* malloc, free */
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
void *scan(void *_re)
{
    struct Reaction *re = (struct Reaction *)_re;
    struct State *new_state = malloc(sizeof(struct State));
    memcpy(new_state, re->state, sizeof(struct State));
    int _ = scanf("%299s", new_state->val);
    dispatch(re, new_state);
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

/**
 * Je creer ma fonction d'initialization.
 * J'alloue sur ma pile un état.
 */
void *make_init_state()
{
    static char val[300] = {'\0'};
    struct State *st = malloc(sizeof(struct State));
    st->val = val;
    st->count = 0;
    st->scan = 0;
    st->step = first_print;
    st->before = zero;
    return st;
}

/**
 * Description de la machine à état. Cette fonction est appelée au démarrage
 * de la machine, on initialise un état statique qui nous donnera
 * l'information sur comment se comporter.
 *
 * On peut aussi utiliser un état sur la pile, et éventuellement changer
 * d'état. Quoi qu'il en soit, l'état courant ici est statique et donc je peut
 * utiliser la variable locale. Mais je pourrais aussi utiliser le pointeur
 * vers l'état courrant dans la structure `re->state`.
 *
 * La fonction "use_state" fait de la mémoïsation en fonction de l'adresse de
 * l'état initial. A bien prendre garde si je décide de bouger ou de changer
 * completement d'état. L'object `re` sera différent. Ca peut surement avoir un
 * interêt, à creuser.
 *
 * J'aurai pu utiliser "use_reducer", en fait ça ressemble beaucoup à un
 * pattern assez connue. Je pourrais créer un use_effect et tout le reste.
 */
int state_machine()
{
    struct Reaction *re = use_state(make_init_state);
    struct State *st = re->state;
    if (st->before(st) == 1)
    {
        void *_;
        pthread_join(st->scan, _);
        free(re->state);
        return EXIT_SM;
    }
    st->step(st);
    async_scan(re);
    return CONTINUE_SM;
}

/**
 * Un bon échange de pointeur avec un free drastique. Cette
 * partie serait critique si on était dans un context avec de
 * multiple producteurs d'évennement.
 */
void on_change_with_free(void **dst, void **src)
{
    free(*dst);
    *dst = *src;
}

/**
 * Main, je lance ma machine à état.
 */
void main(void)
{
    struct Opt opt = {on_change_with_free};
    create(state_machine, &opt);
}