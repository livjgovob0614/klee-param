#include<stdio.h>
#include<klee/klee.h>

int main(){
 int a, b;
 klee_make_symbolic(&a, sizeof(a), "a");
 klee_make_symbolic(&b, sizeof(b), "b");

 klee_open_merge();
 if (a == 10) {
  if (b > 5) printf("5\n");
  else printf("else\n");
 }
 klee_close_merge();

 return 0;
}
