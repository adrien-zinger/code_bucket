#include <string>

template<typename T>                                                           
struct trait_to_string {
	static std::string to_string(const T& self);
};                                   

