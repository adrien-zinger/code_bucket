#define _GNU_SOURCE

#include <pthread.h>
#include <stdatomic.h>

#include <linux/futex.h>
#include <sys/syscall.h>
#include <unistd.h>

#include <stdio.h>

const int NOTIFIED = 1;
const int PARKED = 0;
const int EMPTY = -1;

void *foo(void *sv)
{
    // Attendre jusqu'à ce que futex == 0
    while (atomic_load((atomic_int *)sv) != EMPTY)
    { // prevent spurious wake up
        syscall(SYS_futex, sv, FUTEX_WAIT, PARKED, NULL, NULL, 0);
        if (atomic_compare_exchange_strong((atomic_int *)sv, &NOTIFIED, EMPTY) == 0)
            break;
        //  Spurious wake up. We loop to try again.
    }
    return NULL;
}

int main()
{
    pthread_t th;
    atomic_int futex = PARKED;
    pthread_create(&th, NULL, foo, &futex);

    sleep(1);

    atomic_exchange(&futex, NOTIFIED);
    syscall(SYS_futex, &futex, FUTEX_WAKE, 1, NULL, NULL, 0);
    pthread_join(th, NULL);

    // pthread_create(&th, NULL, foo, &futex);
    // pthread_join(th, NULL);

    return 0;
}