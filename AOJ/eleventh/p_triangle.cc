//http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0012&lang=jp
//三角形の内部か否かの判定問題
//右・奥
#include <iostream>
#include <complex>
#include <cmath>
using namespace std;
typedef complex<double> xy_t;
double cross_product(xy_t a, xy_t b) { return (conj(a)*b).imag(); }

double x[4], y[4];
int main() {
  while (true) {
    for (int i=0; i<4; ++i) cin >> x[i] >> y[i];
    if (!cin) break;

    xy_t a(x[0],y[0]), b(x[1],y[1]), c(x[2],y[2]), p(x[3],y[3]);
    bool tri1 = cross_product(a-p,b-p) > 0;
    bool tri2 = cross_product(b-p,c-p) > 0;
    bool tri3 = cross_product(c-p,a-p) > 0;

    bool tri4 = cross_product(a-p,b-p) < 0;
    bool tri5 = cross_product(b-p,c-p) < 0;
    bool tri6 = cross_product(c-p,a-p) < 0;

    bool ok = tri1*tri2*tri3;
    if (ok != 1) ok = tri4*tri5*tri6;

    cout << (ok ? "YES" : "NO") << endl;
  }
}
