#include <stdio.h>

int min (int a, int b){
  if(a < b) return a;
  else return b;
}
int max (int a, int b){
  if(a > b) return a;
  else return b;
}

int cross_judge(double ax, double ay, double bx, double by, double cx, double cy, double dx, double dy){
    int answer;
    double a, b, c, d;
    a = (ax - bx) * (cy - ay) + (ay - by) * (ax - cx);
    b = (ax - bx) * (dy - ay) + (ay - by) * (ax - dx);
    c = (cx - dx) * (ay - cy) + (cy - dy) * (cx - ax);
    d = (cx - dx) * (by - cy) + (cy - dy) * (cx - bx);
    if (a * b <= 0 && c * d <= 0) answer = 1;
    else answer = 0;
    return answer;
  }


int main() {
  double ax;
  double ay;
  double bx;
  double by;
  double cx;
  double cy;
  double dx;
  double dy;

  scanf("%lf",&ax); scanf("%lf",&ay); scanf("%lf",&bx); scanf("%lf",&by);
  scanf("%lf",&cx); scanf("%lf",&cy); scanf("%lf",&dx); scanf("%lf",&dy);

  int answer = cross_judge(ax,ay,bx,by,cx,cy,dx,dy);

  if (answer) printf("%s","OK");
  else printf("%s","NG");
  return 0;
}
