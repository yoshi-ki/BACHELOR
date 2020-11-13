#include <stdio.h>

int main(){

  FILE *fp;
  double people = 0;
  double sum = 0;
  double x;
  double answer;

  fp = fopen("test.txt", "r");

  while(fscanf(fp, "%lf", &x) == 1){
    sum += x;
    people ++;
  }
  answer = sum/people;

  fclose(fp);


  char filename[FILENAME_MAX];
  scanf("%99s",filename);

  FILE *fp1;

  fp1 = fopen(filename, "w");
  fprintf(fp1,"%f\n",answer);
  fclose(fp1);


}
