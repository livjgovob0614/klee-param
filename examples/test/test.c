#include <klee/klee.h>
#include <stdio.h>

int get_sign(char y) {
  char arr[2] = {1, 2};
  arr[y] = 5;
  printf("x:%d", y);
  return 0;
} 

int main() {
  char a;
  klee_make_symbolic(&a, sizeof(a), "a");
  return get_sign(a);
} 
