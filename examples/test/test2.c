#include <klee/klee.h>
#include <stdio.h>

int get_sign(int x) {
  //int a = 2;
  //if (a == 2)
  //  x  = 3;
  char y = x;
  int cnt=0;
  while(y<2) {
    printf("2\n");
    cnt++;
    y++;
    if(cnt==3) break;

  }
  return 0;
} 

int main() {
  int a;
  klee_make_symbolic(&a, sizeof(a), "a");
  return get_sign(a);
} 
