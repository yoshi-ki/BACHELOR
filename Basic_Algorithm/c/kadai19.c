#include <stdio.h>

void sort3(int *num1,int *num2,int *num3){
  if (*num1 > *num2){
    int temp;
    temp = *num1;
    *num1 = *num2;
    *num2 = temp;
  }
  if (*num1 > *num3){
    int temp;
    temp = *num1;
    *num1 = *num3;
    *num3 = temp;
  }
  if (*num2 > *num3){
    int temp;
    temp = *num2;
    *num2 = *num3;
    *num3 = temp;
  }
}

int main(void)
{
    int x[3] = {0, 0, 0};
    int i;

    for (i = 0; i < 3; i++)
        scanf("%d", &x[i]);

    sort3(&x[0], &x[1], &x[2]);

    for (i = 0; i < 3; i++)
        printf("%d\n", x[i]);

    return 0;
}
