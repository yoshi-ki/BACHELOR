#include <stdio.h>
#include <string.h>

void categorize(char a[], char b[]){
  int num = 0;
  while(num < strlen(a)){

    if(a[num] == 'A'){
      int c = 1;
      while(a[num] == a[num+1]) {num++; c++;}
      if(c >= 0 && c <= 9){
      char d = '0' + c;
      int len = strlen(b); b[len] = 'A'; b[len+1] = d; b[len+2] = '\0';
      }
      if(c >= 10 && c <= 99){
      char d = '0' + c / 10;
      char e = '0' + c % 10 ;
      int len = strlen(b); b[len] = 'A'; b[len+1] = d; b[len+2] = e; b[len+3] = '\0';
      }
      if(c == 100){
      int len = strlen(b); b[len] = 'A'; b[len+1] = '1'; b[len+2] = '0';b[len+3] = '0'; b[len+4] = '\0';
      }
      num++;
    }
    if(a[num] == 'T'){
      int c = 1;
      while(a[num] == a[num+1]) {num++; c++;}
      if(c >= 0 && c <= 9){
      char d = '0' + c;
      int len = strlen(b); b[len] = 'T'; b[len+1] = d; b[len+2] = '\0';
      }
      if(c >= 10 && c <= 99){
      char d = '0' + c / 10;
      char e = '0' + c % 10 ;
      int len = strlen(b); b[len] = 'T'; b[len+1] = d; b[len+2] = e; b[len+3] = '\0';
      }
      if(c == 100){
      int len = strlen(b); b[len] = 'T'; b[len+1] = '1'; b[len+2] = '0';b[len+3] = '0'; b[len+4] = '\0';
      }
      num++;
    }
    if(a[num] == 'G'){
      int c = 1;
      while(a[num] == a[num+1]) {num++; c++;}
      if(c >= 0 && c <= 9){
      char d = '0' + c;
      int len = strlen(b); b[len] = 'G'; b[len+1] = d; b[len+2] = '\0';
      }
      if(c >= 10 && c <= 99){
      char d = '0' + c / 10;
      char e = '0' + c % 10 ;
      int len = strlen(b); b[len] = 'G'; b[len+1] = d; b[len+2] = e; b[len+3] = '\0';
      }
      if(c == 100){
      int len = strlen(b); b[len] = 'G'; b[len+1] = '1'; b[len+2] = '0';b[len+3] = '0'; b[len+4] = '\0';
      }
      num++;
    }
    if(a[num] == 'C'){
      int c = 1;
      while(a[num] == a[num+1]) {num++; c++;}
      if(c >= 0 && c <= 9){
      char d = '0' + c;
      int len = strlen(b); b[len] = 'C'; b[len+1] = d; b[len+2] = '\0';
      }
      if(c >= 10 && c <= 99){
      char d = '0' + c / 10;
      char e = '0' + c % 10 ;
      int len = strlen(b); b[len] = 'C'; b[len+1] = d; b[len+2] = e; b[len+3] = '\0';
      }
      if(c == 100){
      int len = strlen(b); b[len] = 'C'; b[len+1] = '1'; b[len+2] = '0';b[len+3] = '0'; b[len+4] = '\0';
      }
      num++;
    }
  }
}

int main() {
  char dna[100] = "";
  scanf("%99s", dna);

  char compress [200] = "";
  categorize(dna,compress);

  if(strlen(compress) < strlen(dna)) {
    for(int i = 0; i < strlen(compress); i++){
      printf("%c",compress[i]);
    }
  }
  else {
    for(int i = 0; i < strlen(dna); i++){
      printf("%c",dna[i]);
    }

  }

  return 0;
}
