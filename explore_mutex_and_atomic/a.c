#include <stdatomic.h>
#include <pthread.h>
#include <stdio.h>

void *producer_thread(void *counter)
{
    int c = atomic_fetch_add_explicit((atomic_int *)counter, 1, __ATOMIC_RELEASE);
    while (c != 4)
        c = atomic_fetch_add_explicit((atomic_int *)counter, 1, __ATOMIC_RELEASE);
}

void *consumer_thread(void *counter)
{
    int c = atomic_load_explicit((atomic_int *)counter, __ATOMIC_ACQUIRE);
    while (c != 5)
        c = atomic_load_explicit((atomic_int *)counter, __ATOMIC_ACQUIRE);
}

void main()
{
    atomic_int counter = 0;
    pthread_t producer;
    pthread_t consumer;
    pthread_create(&consumer, NULL, consumer_thread, &counter);
    pthread_create(&producer, NULL, producer_thread, &counter);
    void **_res = NULL;
    pthread_join(producer, _res);
    pthread_join(consumer, _res);
    printf("ok\n");
}