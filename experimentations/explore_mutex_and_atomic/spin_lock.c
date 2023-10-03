#include <stdatomic.h>
#include <pthread.h>
#include <stdio.h>
#include <assert.h>

void *producer_thread(void *_args)
{
    atomic_int *args = (atomic_int *)_args;
    atomic_store_explicit(&args[1], 42, __ATOMIC_RELEASE);
    atomic_store_explicit(&args[0], 10000, __ATOMIC_RELEASE);
}

void *consumer_thread(void *_args)
{
    atomic_int *args = (atomic_int *)_args;
    while (atomic_load_explicit(&args[0], __ATOMIC_ACQUIRE) != 10000)
        ;
    int value = atomic_load_explicit(&args[1], __ATOMIC_ACQUIRE);
    // printf("value always 42: %i\n", value);
    assert(value == 42);
}

void main()
{
    for (int i = 0; i < 10000; ++i)
    {
        atomic_int lock = 0;
        atomic_int value = 0;
        atomic_int args[2] = {lock, value};
        pthread_t producer;
        pthread_t consumer;
        pthread_create(&consumer, NULL, consumer_thread, &args);
        pthread_create(&producer, NULL, producer_thread, &args);
        void **_res = NULL;
        pthread_join(producer, _res);
        pthread_join(consumer, _res);
    }
}