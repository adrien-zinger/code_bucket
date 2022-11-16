#include <stdlib.h>
#include <string.h>
#include <stdio.h>

struct Test
{
    char *str;
};

void main()
{
    static char str[4] = "hey\0";
    static struct Test s = {str};
    struct Test *h = malloc(sizeof(struct Test));
    h->str = "nop\0";
    printf("static: %s", s.str);
    memcpy(&s, h, 4);
    free(h);
}