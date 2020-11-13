#include <stdio.h>

int len_of_str(const char a[]){
  int num = 0;

  while(a[num]) num++;

  return num;
}

void str_tolower(char s[]){
  for (int i = 0; i < len_of_str(s) ; i++){
    if (s[i] >= 'A' && s[i] <= 'Z' ){
      s[i] = s[i] + 32;
    }
  }
}

int main(void)
{
    char s[100] = "";

    scanf("%99s", s);

    str_tolower(s);

    printf("%s\n", s);

    return 0;
}
