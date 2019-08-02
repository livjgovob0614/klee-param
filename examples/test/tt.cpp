#include <klee/klee.h>
#include <stdio.h>
#include <assert.h>

int twice(int v) {
  return 2*v;
} 

int main() {
  int x, y, z;
  klee_make_symbolic(&x, sizeof(x), "x");
  klee_make_symbolic(&y, sizeof(y), "y");
  z = twice(y);
  if (z == x) {
    if (x > y+10)
      assert(false);
  }
  return 1;
} 
