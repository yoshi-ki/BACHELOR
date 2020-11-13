#include <stdio.h>
#include <string.h>

int main() {
  char dna[100] = "";
  scanf("%99s", dna);

  char compress [100] = "";
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
