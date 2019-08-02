#include <klee/klee.h>
#include <stdio.h>

// In this case, function call instruction(in main()) does not fork at that point,
// but forks at branch instruction below.
void func1(int a) {
  if (a == 3) printf("33");
}

int func2(int a){
  if (a == 3) printf("33");
  
  int b;
  klee_make_symbolic(&b, sizeof(b), "b");

  if (b > 2) printf("22"); 

  return b;
}

int main() {
  int a;
  klee_make_symbolic(&a, sizeof(a), "a");

  func2(a);

  return 0;
} 
