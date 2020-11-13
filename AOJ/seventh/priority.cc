//priority_queue
//http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_9_ C&lang=jp
//右奥

#include <queue>
#include <iostream>
using namespace std;
int main() {
  string word;
  priority_queue<int> Q;// intを格納する優先度つきキュー
  while (cin >> word){
    if(word == "insert"){
      int num;
      cin >> num;
      Q.push(num);
    }
    else if(word == "extract"){
      int n = Q.top(); // 先頭をコピーして
      Q.pop(); // 先頭要素を廃棄
      cout << n << endl;
    }
    else if (word == "end"){
      break;
    }
}
}
