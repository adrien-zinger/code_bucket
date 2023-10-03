#include <assert.h>

int main()
{
    for (;;)
    {
        int a = 2;
        int b = 0;
        assert(a == (b = 2));
    }
    return 0;
}