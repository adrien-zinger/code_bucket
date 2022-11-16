#include <stdarg.h>
#include <stdio.h>
#include <stdint.h>

void foo(va_list args)
{
    int a = va_arg(args, int);
    char *c = va_arg(args, char *);
    printf("hello world %i %s\n", a, c);
    va_end(args);
}

struct FunctionProxy
{
    void (*fn)(va_list);
    void *args;
};

struct FunctionProxy
make_proxy(void (*fn)(va_list), ...)
{
    va_list args;
    va_start(args, fn);
    struct FunctionProxy de = {fn, args};
    return de;
}

void exec(struct FunctionProxy de)
{
    de.fn(de.args);
}

struct FunctionProxy bar()
{
    return make_proxy(foo, 12, "hello");
}

void main()
{
    exec(bar());
}