#include <assert.h>

int main()
{
    for (;;)
    {
        int a = 2;
        int b = 0;
        int result = (a == (b = 2));
        assert(result == 1);
    }
    return 0;
}