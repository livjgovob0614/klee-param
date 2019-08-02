#include <klee/klee.h>
#include <stdio.h>

void func(int a) {
  int z;
  if (a == 3) {
    int c = 3;
    printf("3");
  }
  else if (a == 2) {
	printf("2");
  }
  else {
	if (a > 1) z = 3;
	else z = 5;
  }

  printf("2");
} 
int main() {
  char a;
  klee_make_symbolic(&a, sizeof(a), "a");

  func(a);
  return 0;
}

