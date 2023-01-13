// Cette lib ne fit pas a proprement partie de Reagir, elle sert
// essentiellement à l'exemple fsm qui requiere une lecture asynchrone
// continue de l'entrée utilisateur.

#include <stdio.h>   /* scanf */
#include <pthread.h> /* pthread_* */
#include <reagir.h>  /* dispatch, Reaction */

static pthread_t scanner = NULL;


static void *scan(void *_)
{
    for (;;)
    {
        static char buffer[30] = {'\0'};
        int _ = scanf("%29s", buffer);
    }
}

void start_scan()
{
    pthread_create(&scanner, NULL, scan, NULL);
}

void stop_scan(struct Reaction *re)
{
    void **_;
    pthread_join(scanner, _);
}