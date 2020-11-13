#include <stdio.h>



int main(){
  int answer = 0, ch;

  while((ch = getchar()) != EOF) {
    if (ch == 'x') answer++;
  }

  printf("%d\n",answer);

  return 0;
}
