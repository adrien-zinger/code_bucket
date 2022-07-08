#include <iostream>
#include <cassert>
#include "lib.h"

int main() {
  MyInt i (2);
  i = i + 4;
  assert(i.n == 6);
  std::cout << "I is equals to " << i.n << std::endl;
  int j = 4 + i;
  assert(j == 10);
  std::cout << "J is equals to " << j << std::endl;
  return 0;
}
