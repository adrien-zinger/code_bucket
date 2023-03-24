#include <stdio.h>
#include <string.h>
#include <setjmp.h>

void scan(jmp_buf *buf_env)
{
    char in[300];
    int _ = scanf("%s", in);
    if (strcmp("q", in) == 0)
    {
        longjmp(*buf_env, 0);
    }
}

void loop(jmp_buf *buf_env)
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
