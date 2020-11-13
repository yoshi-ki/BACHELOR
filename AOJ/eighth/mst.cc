//minimum spanning tree
//http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_ 12_A&lang=jp
//右　奥

#include <iostream>
#include <algorithm>
#include <tuple>
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
  cin >> n;
  tuple<int,int,int> cost[10010]; //Array for cost
  int count = 0;
  for (int i = 0; i < n; i ++){
    for (int j = 0; j < n; j++){
      int t;
      cin >> t;
      if (t >= 0){
      get<1>(cost[count]) = i;
      get<2>(cost[count]) = j;
      get<0>(cost[count]) = t;
      count++;
    }
    }
  }
  sort(cost,cost + n*n);//sortする

  init(n + 10);

  int ans = 0;
  int anscount = 0;//このcountがnになった時点で終了する
  int k = 0;
  while (anscount != n-1){
    if (is_same_set(get<1>(cost[k]), get<2>(cost[k]))) {
      k ++;
    }
    else{
      unite(get<1>(cost[k]), get<2>(cost[k]));
      ans += get<0>(cost[k]);
      k++;
      anscount++;
    }
  }


  cout << ans << endl;
  return 0;
}
