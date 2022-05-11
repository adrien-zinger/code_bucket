#include <iostream>
#include "lib.h"
#include <string>
#include "a.h"

int main() {
	A a("hello world");
	std::cout << log<A>(a);
	return 0;
}
