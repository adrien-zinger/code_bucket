#include <stdio.h>

struct A
{
};
struct B
{
};

template <typename T>
struct Generic
{
    static void fn();
};

template <>
struct Generic<A>
{
    static void fn()
    {
        printf("foo\n");
    }
};

template <>
struct Generic<B>
{
    static void fn()
    {
        printf("bar\n");
    }
};

template <typename T>
static void call(T obj)
{
    Generic<T>::fn();
}

int main()
{
    struct A a;
    struct B b;
    call(a);
    call(b);
}