//プリンセス
//http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=2019&lang=jp
//未完成
//中央中央
//140が出せなかった

#include<iostream>
#include<utility>
#include<algorithm>
using namespace std;

int N, M;
pair<int,int> PD[10010];


int main(){
  int ans = 0;
  while (cin >> N >> M && N){
    int d,p;
    for (int i = 0; i< N; i++){
      cin >> d >> p;
      PD[i] = make_pair(p,d);
    }
    sort(PD,PD + N - 1);

    for (int i = 0; i < N; i++) ans += PD[i].first * PD[i].second;
    for (int i = 0; i < N; i++){
      if (M<=0) break;
      int warrior = min(M,PD[i].second);
      ans -= PD[i]. first * warrior;
      M -= warrior;
    }
    cout << ans << endl;
    return 0;
  }
}
