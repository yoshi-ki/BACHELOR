//round robin scheduling
//http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_3_ B&lang=jp
//右奥

#include <queue>
#include <iostream>

using namespace std;
int main() {
  int num;
  int quantum;
  int count = 0;

  cin >> num >> quantum;

  queue<pair <string,int> > Q; // pairを格納するキュー

  string word;
  int time;
  int anstime = 0;
  while (count != num){
    cin >>word >> time;
    Q.push(pair<string,int>(word,time));
    count++;
  }

  while (! Q.empty()) {

  pair<string, int> top = Q.front(); // 要素がある間
  string tp = top.first;
  int n = top.second;
  if (n <= quantum){
     Q.pop(); // 先頭要素を廃棄
     anstime = anstime + top.second;
     cout << top.first << ' ' << anstime << endl;
   }
   else {
     anstime = anstime + quantum;
     Q.pop();
     Q.push(pair<string,int>(top.first,top.second-quantum));
   }

  }

}
