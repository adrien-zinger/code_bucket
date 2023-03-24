#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include <setjmp.h>

void foo(jmp_buf *buf_env)
{
    char in[300];
    int _ = scanf("%s", in);
    if (strcmp("q", in) == 0)
    {
        longjmp(*buf_env, 0);
    }
}

void curryfied(va_list *buf_env)
{
    while (1)
    {
        printf("loop\n");
        scan(buf_env);
    }
}

void main()
{
    jmp_buf buf_env;
    int i = 1;
    while (i)
    {
        setjmp(buf_env);
        if (i == 0)
            break;
        i--;
        loop(&buf_env);
    }
    return;
}