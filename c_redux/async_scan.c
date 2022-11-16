#include <pthread.h>
#include <stdio.h>
#include <unistd.h>

pthread_t th;

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

void start_scanner(void (*cb)(char[300]))
{
    pthread_create(&th, NULL, scanner, cb);
}

void stop_scanner()
{
    void *res;
    pthread_cancel(th);
    pthread_join(th, res);
    printf("cancelled %i\n", PTHREAD_CANCELED == res);
}

void on_scan(char buffer[300])
{
    printf("buffer: %s\n", buffer);
}

void main()
{
    start_scanner(on_scan);
    sleep(5);
    stop_scanner();
    printf("get out\n");
}