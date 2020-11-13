#include <stdio.h>

int main() {
  FILE *fp;
  double x;
  double y;
  scanf("%lf", &x);
  scanf("%lf", &y);

  double teach_x;
  double teach_y;
  int teach;
  int judged_class;
  double distance = -1;

  fp = fopen("input_data.txt","r");
  while(fscanf(fp, "%lf%lf%d",&teach_x, &teach_y, &teach )  == 3){
    if(distance >= 0){
      if (distance > (x - teach_x) * (x - teach_x) + (y - teach_y) * (y - teach_y)){
        distance = (x - teach_x) * (x - teach_x) + (y - teach_y) * (y - teach_y);
        judged_class = teach;
      }
    }
    else {
      distance = (x - teach_x) * (x - teach_x) + (y - teach_y) * (y - teach_y);
      judged_class = teach;
    }
  }
  fclose(fp);
  printf("%d", judged_class);
  return 0;
}
