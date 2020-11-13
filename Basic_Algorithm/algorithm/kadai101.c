#include <stdio.h>

int main(){

int num;
scanf("%d",&num);
int output[32];
for (int i = 0; i < 32; i++){
        num = num & 1;
        output[31 - i] = num;
        num = num >> 1;
}
for (int i = 0; i++; i < 32){
printf("%d",output[i]);
}
return 0;
}
