#include <string>

template<typename T>                                                           
struct trait_to_string {
	static std::string to_string(const T& self);
};                                   

template<typename T>
concept ImplToString = requires(T a) {
	trait_to_string<T>::to_string(a);
};

template <typename T>
requires ImplToString<T>
std::string log(T a)
{
	return trait_to_string<T>::to_string(a);
}
