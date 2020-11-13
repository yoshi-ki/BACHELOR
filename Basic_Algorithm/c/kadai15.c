#include <stdio.h>

int str_chnum(const char s[],char target){
  int num = 0;
  int answer = 0;

  while (s[num]){
    if (s[num] =='a') answer++;
    num++;
  }

  return answer;
}



int main(void)
{
    char s[100] = "";
    char c = 'a';

    scanf("%99s", s);

    printf("%d\n", str_chnum(s,c));

    return 0;
}
