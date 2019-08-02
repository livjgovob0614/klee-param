#include <stdio.h>
#include <klee/klee.h>

int main(){
    char x;
    klee_make_symbolic(&x, sizeof(x), "x");
 
    x = 127;
    while(true) {
      x++;
	printf("x: %d\n", x);
      if (x>128) break;
    }
    
    return 0;
}
