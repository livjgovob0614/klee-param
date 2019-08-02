#include <stdio.h>
#include <klee/klee.h>

int main(){
    char x;
    klee_make_symbolic(&x, sizeof(x), "x");
    
    while(x<5){
        x++; 
        if(x<3)
          printf("......... error..............\n");
    } 
    return 0;
}
