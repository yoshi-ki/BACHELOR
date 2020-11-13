//http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0117
//大工の褒美
//右、中央

#include <iostream>
#include <cstdio>
using namespace std;
int N,M,A,B,C,D,x1,x2,x3,x4;


int main() {

  scanf("%d%d", &N, &M);
  int K[24][24];
  for (int i=1; i<=N; i++){
    for(int j=1; j<=N; j++){
      K[i][j] = 1e6;
    }
  }

  while(M) {
    scanf("%d,%d,%d,%d", &A, &B, &C, &D);
    K[A][B] = C;
    K[B][A] = D;
    M--;
  }
  scanf("%d,%d,%d,%d", &x1, &x2, &x3, &x4);
  for (int k=1; k<=N; k++){
    for(int i=1; i<=N; i++){
      for(int j=1; j<=N; j++){
        if(K[i][j] > K[i][k] + K[k][j]){
          K[i][j] = K[i][k] + K[k][j];
        }
      }
    }
  }

  // int answer;
  // answer = x3 - x4 - K[x1][x2] - K[x2][x1];
  cout << (x3 - x4 - K[x1][x2] - K[x2][x1]) << endl;

  return 0;

}
