#include <stdio.h>


int len_of_str(const char a[]){
  int num = 0;

  while(a[num]) num++;

  return num;
}

int main() {
  char a[100] = "";
  char b[100] = "";

  scanf("%99s", a);
  scanf("%99s", b);

  int len1 = len_of_str(a);
  int len2 = len_of_str(b);

  if (len1 != len2) printf("%s\n","NG");
  else {
    int c = 0;
    for (int i = 0; i < len1; i++){
      if (a[i] == b[i]) c++;
    }
    if (c == len1) printf("%s\n","OK");
    else printf("%s\n","NG");
  }


  return 0;
}
