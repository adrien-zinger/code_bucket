#include <iostream>
#include "lib.h"
#include <string>
#include "a.h"
#include <bitset>

int main() {
  A a("hello world");
  std::cout << log(a);

  std::bitset<8> byte{ "00010111" };
  std::cout << log(byte);
  return 0;
}
