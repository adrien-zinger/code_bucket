#include <pthread.h>
#include <stdio.h>

pthread_cond_t CONDVAR = PTHREAD_COND_INITIALIZER;
pthread_mutex_t MUTEX = PTHREAD_MUTEX_INITIALIZER;

void *producer_thread(void *_)
{
    // Risque de signal perdu
    pthread_cond_signal(&CONDVAR);
    printf("EOP\n");
}

void *consumer_thread(void *_)
{
    pthread_cond_wait(&CONDVAR, &MUTEX);
    printf("EOC\n");
}

void main()
{
    pthread_t producer;
    pthread_t consumer;

    pthread_create(&producer,
                   NULL,
                   producer_thread,
                   NULL);

    pthread_create(&consumer,
                   NULL,
                   consumer_thread,
                   NULL);
    void **_res = NULL;
    pthread_join(producer, _res);
    pthread_join(consumer, _res);
    printf("ok\n");
}