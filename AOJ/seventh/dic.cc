//search-dictionary
//http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_4_ C&lang=jp
//右奥
#include <iostream>
#include <set>
using namespace std;

int main(){
  int num;
  cin >> num;
  string cmd;
  typedef set<string> set_t;
  set_t A;
  while(cin >> cmd){
    if (cmd == "insert"){
      string word;
      cin >> word;
      A.insert (word);
    }
    else if (cmd == "find"){
      string word;
      cin >> word;
      if (A.count(word)) cout << "yes" << endl;
      else cout << "no" << endl;
    }
  }

}
