#include <iostream>
using namespace std;

double untaxed(int num, int tax){
  double price;
  price = (num * 100) / (100 + tax );
  return price;
}

double taxed (int num, int tax){
  double price;
  price = (num/100) * (100 + tax );
  return (int) price;
}

int main(){
  int tax1;
  int tax2;
  int sum;

  cout << untaxed(108,6) << endl;
  cout << untaxed(108,8) << endl;
  cout << taxed(100,8) << endl;

  while(cin >> tax1 >> tax2 >>sum){
    int sum_max = 0;

    for (int i = 1; i < sum; i++){
      int sale1 = i;
      int sale2 = sum - i;

      if (((sale1*100) % (100 + tax1) == 0) && ((sale2*100) % (100 + tax1) == 0)) {

      int a1 = untaxed(sale1, tax1);
      int a2 = untaxed(sale2, tax1);
      cout << taxed(a1,tax2) + taxed(a2,tax2) << endl;

      if (sum_max < taxed(a1,tax2) + taxed(a2,tax2)) {sum_max = taxed(a1,tax2) + taxed(a2,tax2);
      cout << 1 << endl;
      }
      }
    }
  cout << sum_max << endl;
}


  return 0;

}
