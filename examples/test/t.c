#include <klee/klee.h>
#include <stdio.h>

int func(int a) {
 printf("hi");
 printf("bye");
 return 0;
}

int main() {
 int a;
 klee_make_symbolic(&a, sizeof(a), "a");

 if (a > 10)
  func(a);
 else
  func(5);

 return 0;
}
