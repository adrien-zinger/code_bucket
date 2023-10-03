#include <add.h>

struct MyInt {
  MyInt(int a): n(a) {};
  MyInt(const MyInt& i) {
    n = i.n;
  }
  template<typename T>
    MyInt operator+(const T& i) {
      return Add<T, MyInt>::add((const MyInt&) *this, i);
    }

  int n;
};

template<>
struct Add<int, MyInt> { // Implement Add<int> for MyInt
  static MyInt add(const MyInt& self, const int& i) {
    return MyInt(self.n + i);
  }
};


// Problematic part, here
// template<typename T>
// struct Add<T, MyInt> {
//   static MyInt add(const MyInt& self, const int& i);
// };
