//taxrate challenge
//http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=1192&lang=jp
//右中央


#include <iostream>
using namespace std;

int tax (int tax, int num){
  return num * (100 + tax) /100;
}


int main(){
  int X;
  int Y;
  int S;

  while(cin >> X >> Y >>S && X>0){

  int maximum = 0;

  for (int i=1; i<S; ++i){
    for (int j=i; j<S; ++j){
      if (tax(X,i)+tax(X,j) == S) maximum = max(maximum, tax(Y,i)+tax(Y,j));
      }
    }
    cout << maximum << endl;
  }
}
