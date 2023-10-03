#include <iostream>
#include <cassert>
#include "lib.h"
#include "lib2.h"

int main() {
  MyInt i (2);
  i = i + 4;
  assert(i.n == 6);
  std::cout << "I is equals to " << i.n << std::endl;
  int j = 4 + i;
  assert(j == 10);
  std::cout << "J is equals to " << j << std::endl;

  YourInt y (2);
  y = y + 4;
  assert(y.n == 6);
  std::cout << "Y is equals to " << y.n << std::endl;

  i = 2 + i + 2 + y + 3;
  std::cout << "I is equals to " << i.n << std::endl;

  y = 2 + 3 + i + y;
  std::cout << "Y is equals to " << y.n << std::endl;

  return 0;
}
