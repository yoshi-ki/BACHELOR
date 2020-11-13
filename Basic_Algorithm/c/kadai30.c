#include <stdio.h>

int main(){
  int X;
  int c = 0;
  scanf("%d",&X);

  for (int num = 1; num <= X; num++){
    int i = num;
    while(i % 5 == 0) {
      i = i/5;
      c++;
    }
  }
  printf("%d\n",c);
  return 0;
}
