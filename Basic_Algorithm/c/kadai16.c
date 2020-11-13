#include <stdio.h>

int len_of_str(const char a[]){
  int num = 0;

  while(a[num]) num++;

  return num;
}

void rev_string(char s[]){
  int num;
  num = len_of_str(s);

  char reverse[num + 1];

  for (int i = 0; i < num; i++){
    reverse[i] = s[num - i - 1];
  }

  reverse[num] = '\0';

  for (int i = 0; i < num; i++){
    s[i] = reverse[i] ;
  }

}

int main(void)
{
    char s[100] = "";

    scanf("%99s", s);

    rev_string(s);

    printf("%s\n", s);

    return 0;
}
