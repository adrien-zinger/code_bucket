#pragma once
#include <add.h>

struct MyInt {
  MyInt(int a): n(a) {};
  MyInt(const MyInt& i) {
    n = i.n;
  }
  template<typename T>
  MyInt operator+(const T& i) {
    return Add<MyInt, T>::add((const MyInt&) *this, i);
  }

  int n;
};

template<>
struct Add<int, MyInt> {
  static int add(const int& self, const MyInt& my_i) {
    return self + my_i.n;
  }
};

int operator+(int i, const MyInt& my_i) {
    return Add<int, MyInt>::add((const int&) i, my_i);
}

template<>
struct Add<MyInt, int> {
  static MyInt add(const MyInt& self, const int& i) {
    return MyInt(self.n + i);
  }
};

template<typename T>
struct Add<MyInt, T> {
  static MyInt add(const MyInt& self, const T& t) {
    return MyInt(self.n + i);
  }
};

