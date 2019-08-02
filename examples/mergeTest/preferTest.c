#include<stdio.h>
#include<klee/klee.h>

// preference/ tets

int main(){
 int a, b;
 klee_make_symbolic(&a, sizeof(a), "a");
 klee_make_symbolic(&b, sizeof(b), "b");

 if (a == 2) {
  klee_open_merge();
  while(a) {
   int c = 0;
  }
  klee_close_merge();
 }

 if (a!=2) {
  if (a < 2) 
   printf("2");
  if (a > 2)
   printf("3");
 }

 return 0;
}
