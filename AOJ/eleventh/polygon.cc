//http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0079&lang=jp
//多角形の面積を求める問題
//右・奥
#include <stdio.h>
#include <complex>
#include <cmath>
#include <cstdio>
using namespace std;
typedef complex<double> xy_t;
double cross_product(xy_t a, xy_t b) { return (conj(a)*b).imag(); }

xy_t P[110];

int main() {
  // 入力例 読み込んだ点の個数を N とする
 int N=0;
 double x, y;
 while (scanf("%lf,%lf", &x, &y)!=EOF) {
   P[N++] = xy_t(x,y);
 }
 // 面積計算
  double sum = 0.0;
  for (int i=0; i+2<N; ++i) {
    xy_t a=P[0], b=P[i+1], c=P[i+2];
    sum += cross_product(b-a,c-a)/2; // 三角形 abc の面積を加算
  }
  printf("%.6f\n", abs(sum));
}
