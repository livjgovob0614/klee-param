#include <klee/klee.h>
#include <stdio.h>

int main() {
  char a;
  klee_make_symbolic(&a, sizeof(a), "a");

  if (a==3) printf("s");
  else printf("dsfd");

  return 0;
} 
