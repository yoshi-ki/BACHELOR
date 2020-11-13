#include "mpi.h"
#include <stdio.h>
#include <stdlib.h>
#define N 187500
//実際に送るデータはnumproc*N

int cmpfunc (const void *a, const void * b){
  return (*(int*)a - *(int*)b );
}

void merge(int* left, int* right, int* ar,int num) {
    int l_n = num;
    int r_n = num;
    int i = 0;
    int j = 0;
    for(int k = 0; k < (l_n+r_n); k++){
  if(i>=l_n) {ar[k] = right[j]; j++;}
  else if (j >= r_n) {ar[k] = left[i]; i++;}
  else{
    if(left[i] > right[j]) {ar[k] = right[j]; j++;}
    else {ar[k] = left[i]; i++;}
  }
    }
}

int two_devide_128 (int num, int numproc) {
  int c = 0;
  if(num == 0){return two_devide_128(numproc,0);}
  else{while(num % 2 != 1) {c++; num = num/2;}}
  return c;
}

int pow2(int num){
  int ans = 1;
  for(int i = 0; i<num; i++){
    ans = ans * 2;
  }
  return ans;
}

int main(int argc, char* argv[]){
  int myid,numproc;
  int data[128*N];

  MPI_Init(&argc,&argv);
  MPI_Comm_rank(MPI_COMM_WORLD,&myid);
  MPI_Comm_size(MPI_COMM_WORLD, &numproc);
  MPI_Request request1, request2;
  MPI_Status status;

  if(myid == 0){
    printf("The number of processes is %d\n", numproc);
    for(int i = 0; i < numproc * N; i++){
      int num = rand();
      data[i] = num;
    }
  }
	
  int rec_buf[N];
  MPI_Scatter(data,N,MPI_INT,rec_buf,N,MPI_INT,0,MPI_COMM_WORLD);


  MPI_Barrier(MPI_COMM_WORLD);
  double t1;
  if (myid == 1) {t1 = MPI_Wtime();}
  qsort(rec_buf,N,sizeof(int),cmpfunc);

  
  //2で何回割れるか調べる
  //C回割れた時は、C回受け取って、C+1回目に送る
  int C = two_devide_128(myid,numproc);
  int receive_buf[pow2(C)*N];
  for(int j=0; j<N; j++){
    receive_buf[j] = rec_buf[j];
  }
  for(int i=0; i<C; i++){
    int receive_buf1[pow2(i)*N];
    for(int j=0; j<pow2(i)*N; j++){
      receive_buf1[j] = receive_buf[j];
    }
    int receive_buf2[pow2(i)*N];
    MPI_Recv(receive_buf2, pow2(i)*N,MPI_INT,(myid+pow2(i)),0,MPI_COMM_WORLD,NULL);
    merge(receive_buf1,receive_buf2,receive_buf,pow2(i)*N);
  }
  if(myid !=0){
    MPI_Send(receive_buf, pow2(C)*N, MPI_INT, myid-pow2(C), 0, MPI_COMM_WORLD);
  }


  /*
  //sortできたか確認
  if(myid == 0){
    for(int i=0; i<numproc*N; i++){printf("%d\n", receive_buf[i]);}
  }
  */

  int resend_buf[N];
  MPI_Scatter(receive_buf,N,MPI_INT,resend_buf,N,MPI_INT,0,MPI_COMM_WORLD);

  MPI_Barrier(MPI_COMM_WORLD);
  double t2;
  double elapsed;
  if (myid == 1) {t2 = MPI_Wtime();elapsed = t2-t1;printf("%lf\n",elapsed);}


  MPI_Finalize();
  return 0;
}
