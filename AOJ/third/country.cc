//カントリーロード
//http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=2104& lang=jp
//中央中央

#include <iostream>
#include <algorithm>
using namespace std;

int T, N, K;
int X [100000 + 10];
int d [100000 + 10];//+10を習慣的に取る


int main() {
  cin >> T;
  for(int t = 0; t < T; t++){
    int ans = 0;
    cin >> N >> K;
    for (int i = 0; i < N; i++) cin >> X[i];
    for (int i = 0; i < N - 1; i++) d[i] = X[i+1] - X[i];//距離の計算
    sort(d,d+N-1);
    for (int i = 0; i < max(0,N-K); i++){
      ans = ans + d[i];//ansへの加算
    }
    cout << ans << endl;
  }

  return 0;
}
