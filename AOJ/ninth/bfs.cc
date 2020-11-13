//http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_11_C&lang=jp

#include <iostream>
#include <queue>
using namespace std;
static const int INFTY = (1<<21);

int N;
int E[100][100];
int d[100];

void bfs(int s){
  queue<int> q;
  q.push(s);
  for (int j = 0; j < N; j++)d[j]=INFTY;
  d[s] = 0;
  int u;
  while(!q.empty()){
    u = q.front();
    q.pop();
    for(int v = 0; v < N; v++){
      if(E[u][v] == 0) continue;
      if(d[v] != INFTY) continue;
      d[v] = d[u] + 1;
      q.push(v);
    }
  }
  for(int k = 0; k < N; k++){
    if(d[k] == INFTY){
      cout << k+1 << " " << -1 << endl;
    }else{
      cout << k+1 << " " << d[k] << endl;
    }
  }
}



int main(){
  //Eへのグラフ情報の代入
  cin >> N;
  for (int i = 0; i < N; i++){
    for (int j = 0; j < N; j++){
      E[i][j] = 0;
    }
  }
  for ( int i = 0; i < N; i++){
    int dummy;
    cin >> dummy;
    int n;
    cin >> n;
    for (int c = 0; c < n; c++){
      int dest;
      cin >> dest;
      E[dummy-1][dest-1] = 1;
    }
  }

  bfs(0);

  return 0;


}
