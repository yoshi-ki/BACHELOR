//http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_ 10_C&lang=jp
//最長共通部分列を求める問題
//再帰でなく、表を用いた方が早いということを学んだ
//右　奥

#include <stdio.h>

int score[1010][1010];

//二つのうち大きい方を返す関数
int max2 (int a, int b){
  if (a >= b) return a;
  else return b;
}

//stringの長さ
int len_of_str(const char s[]){
  int num = 0;

  while(s[num]) num++;

  return num;
}


int main() {
  char a[1100];
  char b[1100];
  int datanum;
  scanf("%d",&datanum);
  for(int c = 0; c < datanum; c++){

  scanf("%1100s",a);
  scanf("%1100s",b);
  int num1 = len_of_str(a);
  int num2 = len_of_str(b);


  for(int i = num1; i > 0; i--) a[i] = a[i - 1];
  a[0] = ' ';
  for(int j = num2; j > 0; j--) b[j] = b[j - 1];
  b[0] = ' ';

  for(int i = 0; i <= num1; i++) score[i][0] = 0;
  for(int j = 0; j <= num2; j++) score[0][j] = 0;

  int maximum = 0;

//ここでスコアの表を作成
  for(int i = 1; i<= num1; i++){
    for (int j = 1; j <= num2; j++){
      if (a[i] == b[j])score[i][j] = score[i-1][j-1] + 1;
      else if (a[i] != b[j]) score[i][j] = max2(score[i][j-1],score[i-1][j]);
      maximum = max2(maximum,score[i][j]);
    }
  }



  printf("%d\n",maximum);
}
  return 0;
}
