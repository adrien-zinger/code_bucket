#include <iostream>
template<typename T>                                                           
class t_to_string<T> {
	std::string to_string(const T& self);
};                                             

struct A {                                                               
	A(std::string a): str(a) {};
	std::string str;
};

template<>
struct t_to_string<A> {                                              
	std::string to_string(const A& self) {                           
		return self.str;                                      
	}                                                                
};

int main() {

	std::cout << "Hello World!";
	return 0;
}
