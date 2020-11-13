#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(void)
{
    char *src1 = "Hello,world!";
    char *src2;

    src2 = malloc(sizeof(char) * (strlen(src1) + 1));
    if (src2 == NULL){
      exit(1);
    }
    else{
     strcpy(src2,src1);

     printf("%s\n", src2);
     free(src2);
    }
    return 0;
}
