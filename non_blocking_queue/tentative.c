#include <pthread.h>
#include <stdatomic.h>

void *pop();
void push();
void on_receive(void *);

static pthread_mutex_t LOCK = PTHREAD_MUTEX_INITIALIZER;
static pthread_cond_t WAKE_UP = PTHREAD_COND_INITIALIZER;
static atomic_int SLEEPING = 0;

void *consume(void *_)
{
    for (;;)
    {
        void *foo = pop();
        if (foo == NULL)
        {
            pthread_mutex_lock(&LOCK);
            atomic_exchange(&SLEEPING, 1);
            while (foo == NULL)
            {
                pthread_cond_wait(&WAKE_UP, &LOCK);
                foo = pop();
            }
            atomic_exchange(&SLEEPING, 0);
            pthread_mutex_unlock(&LOCK);
        }
        on_receive(foo);
    }
}

void *produce(void *_)
{
    push();

    if (atomic_load(&SLEEPING) == 1)
    {
        if (!atomic_compare_exchange_strong(&SLEEPING, 1, 2))
            return;
        while (atomic_load(&SLEEPING) == 2)
            pthread_cond_signal(&WAKE_UP);
    }

    if (atomic_load(&SLEEPING) == 2)
        return;

    pthread_mutex_lock(&LOCK);
    // Si le test suivant rate, ça veut dire au choix :
    // - Que le consomateur n'est pas en état de veille
    // - Que le consomateur est en veille et qu'un producteur est entré dans le
    //   premier systeme de signalement
    if (atomic_compare_exchange_strong(&SLEEPING, 1, 2))
    {
        while (atomic_load(&SLEEPING) == 2)
            pthread_cond_signal(&WAKE_UP);
    }
    pthread_mutex_unlock(&LOCK);
}