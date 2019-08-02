/*
 * First KLEE tutorial: testing a small function
 */

#include <klee/klee.h>
#include <stdio.h>
#include <stdlib.h>

int get_sign(int x) {
  if (x == 0)
     return 0;
  
  if (x < 0)
     return -1;
  else 
     return 1;
} 

int main(int argc, char* argv[]) {
  int a = atoi(argv[1]);
  
  return get_sign(a);
} 
