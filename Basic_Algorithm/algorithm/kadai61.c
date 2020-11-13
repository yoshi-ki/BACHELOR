#include <stdio.h>



int max2 (int a, int b){
  if (a >= b) return a;
  else return b;
}

void BubbleSort (int s[],int n){
  for (int i = 0; i < n-1; i++){
    for (int j = n-1; j > i; j--){
      if (s[j] < s[j-1]){
        int temp;
        temp = s[j];
        s[j] = s[j-1];
        s[j-1] = temp;
      }
    }
  }
}


void QuickSort(int s[],int left, int right){
  int l = left;
  int r = right;
  int pivot = s[(left + right)/2];
  int tmp;

  while (s!= NULL){
    while (s[l] < pivot) l++;
    while (s[r] > pivot) r--;
    if(l > r)break;

    tmp = s[l];
    s[l] = s[r];
    s[r] = tmp;
    l++;r--;
  }

  if(left < r){
    QuickSort(s,left,r);
  }
  if(right > l){
    QuickSort(s,l,right);
  }

}






void Merge(int s[], int a[], int num1, int b[], int num2){

  int left = 0;
  int right = 0;
  int i = 0;
  int flag = 1;
  while (left < num1 && right < num2){
    if(a[left] < b[right]){
      s[i] = a[left];
      left++;
      i++;
      flag = 1;
    }else{
      s[i] = b[right];
      right++;
      i++;
      flag = 0;
    }
  }

  if (flag == 1){
    for (int bnum = i; right < num2; bnum ++){
      s[bnum] = b[right];
      right++;
    }
  }
  if (flag == 0){
    for (int anum = i; left < num1; anum ++){
      s[anum] = a[left];
      left++;
    }
  }

}

void MergeSort(int s[], int n){
  if ((n % 2 == 0)&&n/2 == 0) return;
  if ((n % 2 == 1)&&(n + 1)/2 == 1) return;

  if (n % 2 == 0){
    int a[505];
    int b[505];
    for (int i = 0; i < n/2; i++){
      a[i] = s[i];
    }
    int c = 0;
    for (int i = n/2; i < n; i++){
      b[c] = s[i];
      c++ ;
    }
    MergeSort(a,n/2);
    MergeSort(b,n/2);
    Merge(s,a,n/2,b,n/2);
  }
  if (n % 2 == 1){

    int a[505];
    int b[505];
    for (int i = 0; i < (n + 1)/2; i++){
      a[i] = s[i];
    }
    int c = 0;
    for (int i = (n + 1)/2; i < n; i++){
      b[c] = s[i];
      c++ ;
    }
    MergeSort(a,(n+1)/2);
    MergeSort(b,(n-1)/2);
    Merge(s,a,(n+1)/2,b,(n-1)/2);
  }
}


int main(){
  FILE *fp;
  int s[1010];
  int num = 0;

  if((fp = fopen("input.txt","r")) != NULL){
    while (! feof(fp)){
        fscanf(fp,"%d", &(s[num]));
        num++;
    }
  }
  fclose(fp);
  num = num-1;

  int ch ;
  scanf("%d",&ch);
  if(ch == 0) BubbleSort(s,num);
  if(ch == 1) QuickSort(s,0,num-1);
  if(ch == 2) MergeSort(s,num);

  for (int i = 0; i< num; i++){
    printf("%d\n",s[i]);
  }

  return 0;
}
