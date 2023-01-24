#include <stdio.h>
#include <pthread.h>
#include <stdatomic.h>

/************************ /

Lorsqu'on utilise un variable volatile ou une variable
normale on a ces instructions:

foo:
    movl	v(%rip), %eax
    addl	$1, %eax
    movl	%eax, v(%rip)

en utilisant fetch_add:
    lock addl	$1, v(%rip)

/ ************************/

// atomic_int v = 0;

volatile int v = 0;
// equivalent int v = 0;

void *foo(void *_)
{
    // tout ici est plus ou moins equivalent sur x86. Il n'y a aucune instruction
    // magique de produite qui permettrait au processeur de faire n'imp.

    // ++v;
    // atomic_fetch_add((atomic_int *)&v, 1);

    // int c = atomic_load((atomic_int *)&v);
    // while (atomic_compare_exchange_weak((atomic_int *)&v, &c, c + 1) == 0)
    //     c = atomic_load((atomic_int *)&v);
}

void main()
{
    pthread_t a, b;
    pthread_create(&a, NULL, foo, NULL);
    pthread_create(&b, NULL, foo, NULL);
    pthread_join(a, NULL);
    pthread_join(b, NULL);
    printf("%i\n", v);
}