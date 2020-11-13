#include <stdio.h>

int score[1100][1100];

int max2 (int a, int b){
  if (a >= b) return a;
  else return b;
}

int len_of_str(const char s[]){
  int num = 0;

  while(s[num]) num++;

  return num;
}


int main() {
  char a[1100];
  char b[1100];
  scanf("%1050s",a);
  scanf("%1050s",b);
  int num1 = len_of_str(a);
  int num2 = len_of_str(b);


  for(int i = num1; i > 0; i--) a[i] = a[i - 1];
  a[0] = ' ';
  for(int j = num2; j > 0; j--) b[j] = b[j - 1];
  b[0] = ' ';

  for(int i = 0; i <= num1; i++) score[i][0] = 0;
  for(int j = 0; j <= num2; j++) score[0][j] = 0;

  int maximum = 0;
  int max_i = 0;
  int max_j = 0;

  for(int i = 1; i<= num1; i++){
    for (int j = 1; j <= num2; j++){
      if (a[i] == b[j])score[i][j] = score[i-1][j-1] + 1;
      else score[i][j] = max2(score[i][j-1],score[i-1][j]);
      if (maximum < score[i][j]){max_i = i; max_j = j;}
      maximum = max2(maximum,score[i][j]);
    }
  }


  char answer[maximum];
  int k = 0;
  while (k < maximum){
    if (score[max_i][max_j] == score[max_i-1][max_j]) {max_i--;}
    else if (score[max_i][max_j] == score[max_i][max_j-1]) {max_j--;}
    else if (score[max_i][max_j] == score[max_i-1][max_j-1] + 1) {
      answer[maximum - k -1] = a[max_i];
      k++;
      max_i--;
      max_j--;}

  }

  for (int i = 0; i < maximum; i++) printf("%c",answer[i]);

  return 0;
}
