/* Auto structure in C11 */

#include <stdio.h>

typedef struct {
	 enum { INT, DOUBLE } ty;
	 union { int i; double d; } inner;
} Auto;

/* Specific GCC return value macro format ({ int v; v = 1; v; }) */

#define __make_double(x)  ({ Auto ret = { .ty = DOUBLE, .inner.d = (x) }; ret; })
#define __make_int(x) ({ Auto ret = { .ty = INT, .inner.i = (x) }; ret; })

/* Generic Provides a way to choose one of several expressions at compile time,
   based on a type of a controlling expression.
   
   _Generic ( controlling expression, association list )

   See https://en.cppreference.com/w/c/language/generic. */

#define make_auto(x) _Generic((x), int: __make_int((x)), double: __make_double((x)))

void print(Auto val) {
	switch (val.ty) {
		case INT: printf("int: %d\n", val.inner.i); break;
		case DOUBLE: printf("double: %f\n", val.inner.d); break;
		default: printf("oops\n");
	}
}

int main(void) {
	int a = 2;
	double b = 1.2;
	print(make_auto(a));
	print(make_auto(b));
	return 0;
}
