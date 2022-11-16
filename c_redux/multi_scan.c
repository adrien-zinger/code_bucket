#include <pthread.h>
#include <stdio.h>
#include <unistd.h>

void *scanner(void *_cb)
{
    void (*cb)(char[300]) = _cb;
    while (1)
    {
        char buffer[300] = {'\0'};
        int _ = scanf("%s", buffer);
        cb(buffer);
    }
}

pthread_t start_scanner(void (*cb)(char[300]))
{
    pthread_t th;
    pthread_create(&th, NULL, scanner, cb);
    return th;
}

void stop_scanner(pthread_t *th)
{
    void *res;
    pthread_cancel(*th);
    pthread_join(*th, res);
    printf("cancelled %i\n", PTHREAD_CANCELED == res);
}

void on_scan1(char buffer[300])
{
    printf("buffer 1: %s\n", buffer);
}

void on_scan2(char buffer[300])
{
    printf("buffer 2: %s\n", buffer);
}

void main()
{
    pthread_t th1 = start_scanner(on_scan1);
    pthread_t th2 = start_scanner(on_scan2);
    sleep(5);
    stop_scanner(&th1);
    stop_scanner(&th2);
    printf("get out\n");
}