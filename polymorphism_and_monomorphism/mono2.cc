#include <stdio.h>

struct A
{
    void fn() { printf("foo\n"); }
};

struct B
{
    void fn() { printf("bar\n"); }
};

template <typename T>
void call(T obj) { obj.fn(); }

int main()
{
    struct A a;
    struct B b;
    call(a);
    call(b);
}