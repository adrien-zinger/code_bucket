#include <string>

template<typename T>
struct trait_to_string {
  static const bool impl_flag = false;
  static std::string to_string(const T& self);
};

template<typename T>
concept ImplToString = requires(T a) {
  requires trait_to_string<T>::impl;
};

template<typename T>
concept ContainToString = requires(const T& a) {
  a.to_string();
};

template <typename T>
requires ImplToString<T>
std::string log(T a)
{
  return trait_to_string<T>::to_string(a);
}

template <typename T>
requires ContainToString<T>
std::string log(const T& a)
{
  return a.to_string();
}
