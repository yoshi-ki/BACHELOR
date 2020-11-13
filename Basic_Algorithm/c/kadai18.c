#include <stdio.h>

void adjust_point(int *num){
  if (*num < 0) *num = 0;
  if (*num > 100) *num = 100;
}

int main(void)
{
    int x;

    scanf("%d", &x);

    adjust_point(&x);

    printf("%d\n", x);

    return 0;
}
