#include <stdio.h>

void foo()
{
    printf("foo\n");
}

void bar()
{
    printf("bar\n");
}

struct Generic
{
    void (*fn)();
};

void call(void *_obj)
{
    ((struct Generic *)_obj)->fn();
}

int main()
{
    struct Generic a = {foo};
    struct Generic b = {bar};
    call(&a);
    call(&b);
}