#include "./queue.h"

#include <stdio.h>

void main()
{
    static char *var = "hello\0";
    void *queue = new_queue();
    push(queue, var);
    char *ret = (char *)pop(queue);
    printf("%s\n", ret);
    free_queue(queue);
}