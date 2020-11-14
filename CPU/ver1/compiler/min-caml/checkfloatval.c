#include <stdio.h>
#include <stdlib.h>

union val {
  float d;
  int i;
};

int main(void) {
  union val a;
  a.i = 0x40066666;
  printf("%f\n", a.d);
  return 0;
}
