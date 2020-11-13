#include <iostream>
#include <queue>
using namespace std;



int main(){
  int N;
  cin >> N;
  int E[N][N];
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


  for (int i = 0; i < N; i++){
    for (int j = 0; j < N; j++){
      cout << E[i][j];
    }
    cout <<" "<< endl;
  }

  return 0;
}
