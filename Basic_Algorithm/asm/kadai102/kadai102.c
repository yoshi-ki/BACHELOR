#include<stdio.h>

int main() {
  float num;
  scanf("%f",&num);
  union { float f; int i; } x;
  x.f = num;
  for(int i = 31; i >= 0; i-- ){
    printf( "%d", ( x.i >> i ) & 1 );
  }

  return 0;
}
