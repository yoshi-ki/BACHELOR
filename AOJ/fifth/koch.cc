//koch curve
//問題はhttp://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_5_C&lang=jp
//席、右・中央
//再帰関数の書き方を学んだ

#include <iostream>
#include <cstdio>
#include <cmath>
using namespace std;
//use struct
struct Point {double x,y;};

void koch (Point s, Point t, int n){
  //basecase
  if (n == 0){
  }
  //stepcase
  else{
    Point a, b, c;
    a.x = s.x + (t.x - s.x)/3;
    a.y = s.y + (t.y - s.y)/3;
    b.x = (s.x + t.x)/2 - (sqrt(3) * (t.y - s.y))/6;
    b.y = (s.y + t.y)/2 + (sqrt(3) * (t.x - s.x))/6;
    c.x = s.x + (2 * (t.x - s.x))/3;
    c.y = s.y + (2 * (t.y - s.y))/3;

    koch (s,a,n-1);
    printf("%8f %8f\n",a.x,a.y);
    koch (a,b,n-1);
    printf("%8f %8f\n",b.x,b.y);
    koch (b,c,n-1);
    printf("%8f %8f\n",c.x,c.y);
    koch (c,t,n-1);
  }
}

int main(int argc, char const *argv[]) {
  int num;
  cin >> num;
  Point d,e;
  d.x = 0;
  d.y = 0;
  e.x = 100;
  e.y = 0;
  //最初の一の表示
  printf("%8f %8f\n",d.x,d.y);
  koch (d,e,num);
  //最後の一の表示
  printf("%8f %8f\n",e.x,e.y);


  return 0;
}
