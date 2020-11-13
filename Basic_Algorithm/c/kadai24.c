#include <stdio.h>

void change(char a[],char b[]){
  char temp[10];
  for (int i = 0; i < 10; i++) temp[i] = a[i];
  for (int i = 0; i < 10; i++) a[i] = b[i];
  for (int i = 0; i < 10; i++) b[i] = temp[i];
}

void reverse (char s[][10], int num){
  if (num%2){
    for(int i = 0;i < (num-1)/2; i++){
      change(s[i],s[num-i-1]);
    }
  }
  else{
    for(int i = 0; i < num/2; i++){
      change(s[i],s[num-i-1]);
    }
  }
}

int main(void)
{
    char a[5][10] = {"", "", "", "", ""};
    int i;

    for (i = 0; i < 5; i++)
        scanf("%9s", a[i]);

    reverse(a, 5);

    for (i = 0; i < 5; i++)
        printf("%s\n", a[i]);

    return 0;
}
