// Cette lib ne fit pas a proprement partie de Reagir, elle sert
// essentiellement à l'exemple fsm qui requiere une lecture asynchrone
// continue de l'entrée utilisateur.

#include <stdio.h>    /* scanf */
#include <pthread.h>  /* pthread_* */
#include "./reagir.h" /* dispatch, Reaction */
#include <string.h>   /* memset */

static pthread_t scanner;
static unsigned char *buffer;

static void *scan(void *re)
{
    for (;;)
    {
        buffer = malloc(sizeof(unsigned char) * 30);
        memset(buffer, '\0', 30);
        int _ = scanf("%29s", buffer);
        dispatch((struct Reaction *)re, buffer);
    }
}

void start_scan(struct Reaction *re)
{
    pthread_create(&scanner, NULL, scan, re);
}

void stop_scan()
{
    void **_;
    pthread_cancel(scanner);
    pthread_join(scanner, _);
    free(buffer);
}