#include<iostream>
#include<string>
#include<sstream>
#include <utility>
using namespace std;

//べき乗計算
int power(int num, int n){
	int ans = 1;
	for(int i = n; i>0; i--){
		ans = ans * num;
	}
	return ans;
}

//10進数の整数numをnbitの2進数のstringに変換
string decimal_to_binary(int num, int n){
  /*string binary;
  while(n > 0) {
		binary += to_string(num / power(2,n-1));
		if((num / power(2,n-1)) == 1) {
		  num = num - power(2,n-1);
		}
    n = n - 1;
  }
  return binary;
*/
  string binary;
  for (int i = n-1; i >= 0; i--){
    if(num & (1<<i)){
      binary = binary + "1";
    }
    else {
      binary = binary + "0";
    }
  }
  return binary;
}


//find a specific value from the array of pairs
int find_value_from_pair(pair<string,int>* p, string s,int l){
	for(int i=0; i<l;i++){
		if (p[i].first == s) {return p[i].second;}
	}
	return 0;
}


//string to unsigned int
unsigned int StringToUInt(string input)
{
  unsigned int a = stoul(input,nullptr,2);
  return a;
}


//0xstring to unsigend int
unsigned int StringToUInt0x(string input)
{
  long input2 = stol(input,NULL,16);
  int input3 = (int)input2;
  string a;
  for (int i = 31; i >= 0; i--){
    if(input3 & (1<<i)){
      a = a + "1";
    }
    else {
      a = a + "0";
    }
  }
  return StringToUInt(a);
}





