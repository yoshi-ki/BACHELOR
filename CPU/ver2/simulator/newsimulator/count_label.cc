#include <utility>
#include <string>
using namespace std;
void count_label (int now, int* howmany_label, pair<string,int>* label_list,int array_num){
  for (int i = 0; i < array_num; i++){
    if (label_list[i].second == now){
      howmany_label[i] = howmany_label[i] + 1;
      break;
    }
  }
}
