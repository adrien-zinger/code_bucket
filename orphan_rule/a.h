#include <string>

struct A {
	A(std::string a): str(a) {};
	std::string str;
};

template<>
struct trait_to_string<A> {
	static const bool impl = false;
	static std::string to_string(const A& self) {
		return self.str;
	}
};

