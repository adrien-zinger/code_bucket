#include <pthread.h>
#include <stdio.h>

void *producer_thread(void *counter)
{
    int c = 0;
    while (c != 5)
        *(int *)counter = ++c;
}

void *consumer_thread(void *counter)
{
    int c = 0;
    while (c != 5)
        c = *(int *)counter;
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