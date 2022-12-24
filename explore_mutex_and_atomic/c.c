#include <pthread.h>
#include <stdio.h>

static pthread_mutex_t COUNTER_MUTEX = PTHREAD_MUTEX_INITIALIZER;

void *producer_thread(void *counter)
{
    int c = 0;
    while (c != 5)
    {
        pthread_mutex_lock(&COUNTER_MUTEX);
        *(int *)counter = ++c;
        pthread_mutex_unlock(&COUNTER_MUTEX);
    }
}

void *consumer_thread(void *counter)
{
    int c = 0;
    while (c != 5)
    {
        pthread_mutex_lock(&COUNTER_MUTEX);
        c = *(int *)counter;
        pthread_mutex_unlock(&COUNTER_MUTEX);
    }
}

void main()
{
    int counter = 0;
    pthread_t producer;
    pthread_t consumer;
    pthread_create(&consumer,
                   NULL,
                   consumer_thread,
                   &counter);
    pthread_create(&producer,
                   NULL,
                   producer_thread,
                   &counter);
    void **_res = NULL;
    pthread_join(producer, _res);
    pthread_join(consumer, _res);
    printf("ok\n");
}