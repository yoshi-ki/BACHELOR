#include <stdio.h>

void judge(int s[], int num){
  if (num == 1) ;
  else{
    int c = 2;
    while(num % c != 0){
      c ++;
    }
    if (c == num ) s[num - 1] = num;
    judge(s,num-1);
  }
}

int main() {
  int X;
  scanf("%d",&X);
  int prime_num[X];
  for (int i = 0; i < X; i++) prime_num[i] = 0;
  judge(prime_num, X);
  for (int i = 0; i < X; i++) {
    if (prime_num[i] != 0) printf("%d ", prime_num[i]);
  }
  return 0;
}
