#include <iostream>
#include <cassert>
#include "lib.h"

int main() {
  MyInt i (2);
  i = i + 4;
  assert(i.n == 6);
  std::cout << "I is equals to " << i.n << std::endl;
  return 0;
}
