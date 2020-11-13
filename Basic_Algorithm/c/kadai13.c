#include <stdio.h>

int fibonacci(int n){
  int answer;
  if (n == 1 || n == 2) answer = 1;
  else answer = fibonacci(n-1) + fibonacci(n-2);
  return answer;
}

int main(){

  int num;
  scanf("%d", &num);

  printf("%d\n",fibonacci(num));

  return 0;

}
