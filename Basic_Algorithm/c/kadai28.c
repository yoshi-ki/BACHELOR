#include <stdio.h>
#include <time.h>
#include <stdlib.h>

int main(void)
{
  int N;
  int num = 0;
  double x;
  double y;
  scanf("%d",&N);
  srand((unsigned)time(NULL));
  for (int i = 0; i < N; i++){
    x = (double)rand()/RAND_MAX;
    y = (double)rand()/RAND_MAX;
    if (x*x + y*y <= 1) num++;
  }

  printf("%f\n",(double)4*num/N);

    return 0;
}
