//disjoint set
//http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=DSL_1_A& lang=jp
//右　奥

#include <iostream>
using namespace std;

int P[10010]; // 0 から 10000 までの頂点を取り扱い可能
void init(int N) { // 初期化 はじめは全ての頂点はバラバラ
  for (int i=0; i<N; i++) P[i] = i;
}
int root (int a) { //aの大表現を求める
  if (P[a] == a) return a;
  return (P[a] = root(P[a]));
}
bool is_same_set (int a, int b){
  return root(a) == root(b);
}
void unite(int a, int b){
  P[root(a)] = root(b);
}

int main(){
  int n;
  int q;
  cin >> n >> q;
  int com;
  int x;
  int y;
  init(n + 10);
  int i = 0;
  while  (i < q){
    cin >> com >> x >> y;
    if (com == 0){
      unite (x, y);
    }
    if (com == 1){
      cout << is_same_set(x,y) << endl;
    }
    i++;
  }
  return 0;
}
