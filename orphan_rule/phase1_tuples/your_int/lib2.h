#pragma once
#include <add.h>


struct YourInt {
  YourInt(int a): n(a) {};
  YourInt(const YourInt& i) {
    n = i.n;
  }
  template<typename T>
  YourInt operator+(const T& i) {
    return Add<YourInt, T>::add((const YourInt&) *this, i);
  }

  int n;
};

template<>
struct Add<MyInt, YourInt> {
  static MyInt add(const MyInt& self, const YourInt& yo_i) {
    return MyInt(self.n + yo_i.n);
  }
};

template<>
struct Add<int, YourInt> {
  static int add(const int& self, const YourInt& yo_i) {
    return self + yo_i.n;
  }
};

int operator+(int i, const YourInt& yo_i) {
    return Add<int, YourInt>::add((const int&) i, yo_i);
}

template<>
struct Add<YourInt, int> {
  static YourInt add(const YourInt& self, const int& i) {
    return YourInt(self.n + i);
  }
};

