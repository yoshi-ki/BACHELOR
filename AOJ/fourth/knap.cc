#include <utility>
#include <iostream>

using namespace std;

pair<int,int> a[100];

int partvalue(int i, int capacity){
  if (i < 0 || capacity <= 0) return 0;
  else if ((capacity - a[i].second) < 0) return partvalue(i-1,capacity);
  else return max((a[i].first + partvalue(i-1,(capacity - a[i].second))), partvalue(i-1,capacity));
}


int main(int argc, char const *argv[]) {
  int datanum;
  int capacity;
  cin >> datanum >> capacity ;



  for (int i = 0; i < datanum; i++){
    cin >> a[i].first >> a[i].second;
  }

  int maxvalue = 0;

  int partvalue[datanum][capacity];

  for (int i = 0; i < datanum; i++){
    for (int c = 0; c < capacity; c++){
      if (i < 0 || capacity <= 0) partvalue[i][capacity] =  0;
      else if ((capacity - a[i].second) < 0) partvalue[i][capacity] = partvalue[i-1,capacity];
      else  partvalue[i][capacity] = max((a[i].first + partvalue[i-1,(capacity - a[i].second)]), partvalue[i-1,capacity]);
    }
  }

  for (int num = 0; num < datanum; num++){
    if(maxvalue < partvalue[num,capacity]) maxvalue = partvalue[num,capacity];
  }



  cout << maxvalue << endl;

  return 0;
}
