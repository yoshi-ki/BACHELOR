//逆ポーランド
//http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_3_ A&lang=jp
//右奥

#include <string>
#include <stack>
#include <iostream>
using namespace std;

int main() {
  string word;
  stack<int> S;
  while (cin >> word) { // 入力がある限り読み込む
  if (word == "+") {
    int a = S.top();
    S.pop();
    int b = S.top();
    S.pop();
    int n = a + b;
    S.push(n);
  // 数を2つpopして、和をpushする
  }
  else if (word == "-") {
    int a = S.top();
    S.pop();
    int b = S.top();
    int n = b - a;
    S.pop();
    S.push(n);
  // 数を2つpopして、差をpushする
  }
  else if (word == "*") {
    int a = S.top();
    S.pop();
    int b = S.top();
    int n = a * b;
    S.pop();
    S.push(n);
  // 数を2つpopして、積をpushする
  }
  else {
    int n = atoi(word.c_str());
    S.push(n);
  // wordを数値にしてpushする
  }

// Sの先頭要素を表示する。
}
  int ans = S.top();
  cout << ans << endl;
}
