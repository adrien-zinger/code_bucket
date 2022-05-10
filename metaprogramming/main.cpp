#include <iostream>
#include "trait.h"
#include <string>

struct A {                                                               
	A(std::string a): str(a) {};
	std::string str;
};

template<>
struct trait_to_string<A> {                                              
	static std::string to_string(const A& self) {                           
		return self.str;                                      
	}                                                                
};

int main() {
	A a(std::string("hello"));
	std::cout << trait_to_string<A>::to_string(a);
	return 0;
}
