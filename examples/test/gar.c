#include <klee/klee.h>
#include <stdio.h>

int main() {
  int a, b;
  klee_make_symbolic(&a, sizeof(a), "a");

  if (b == 3) printf("%d", b);
  else printf("not 3, %d", b);

  if (a > 3) printf("\ntest");

  return 0;
} 
