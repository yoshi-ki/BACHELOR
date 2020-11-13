#include <stdio.h>
#include <string.h>

void sort (char s[]){
  for (int i = 0; i < 100; i++){
    for (int j = 99; j > i; j--){
      if (s[j] > s[j-1]){
        char temp;
        temp = s[j];
        s[j] = s[j-1];
        s[j-1] = temp;
      }
    }
  }
}

int main() {
  char a[100] = "";
  char b[100] = "";
  scanf("%99s", a);
  scanf("%99s", b);

  sort(a);
  sort(b);

  if (strlen(a) == strlen(b)){
    int c =0;
    for (int i = 0; i < 100; i++){
      if (a[i] == b[i]) c++;
    }
    if (c == 100) printf("%s\n","OK" );
    else printf("%s\n","NG" );
  }
  else printf("%s\n","NG" );
  return 0;
}
