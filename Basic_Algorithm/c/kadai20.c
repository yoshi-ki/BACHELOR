#include <stdio.h>

void set_idx(int *s,int num){
  for (int i = 0; i < num; i++) *(s + i) = i;
}

int main(void)
{
    int a[5];
    int i;

    set_idx(a,5);

    for (i = 0; i < 5; i++)
        printf("%d\n", a[i]);

    return 0;
}
