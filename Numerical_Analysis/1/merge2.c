#include <mpi.h>
#include <stdio.h>
#include <stdlib.h>
#define N 127
//実際に送るデータは64*N

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

int two_devide_128 (int num) {
	int c = 0;
	while(num % 2 != 1) {c++; num/2;(if num == 0) {c = 7; break;}}
	return c;
}

int main(int argc, char* argv[]){
	int myid;
	int data[128*N];

	MPI_Init(&argc,&argv);
	MPI_Comm_rank(MPI_COMM_WORLD,&myid);

	//dataのsendとreceive
	int rec_buf[N];
	if (myid == 0){
		for(int i = 0; i < 128 * N; i++){
    	int num = rand();
			data[i] = num;
		}
		for(int i = 0; i < 128; i++){
			int buf[N];
			for(int j=0; j<N; j++){
				buf[j] = data[N*i+j];
			}
			MPI_Send((void *)buf, N, MPI_INT, i, 0, MPI_COMM_WORLD);
		}
		for(int j=0; j<N; j++){
			rec_buf[j] = data[j];
		}
	}else{
    MPI_Recv((void*)rec_buf, N,MPI_INT,0,0,MPI_COMM_WORLD,NULL);
	}

	MPI_Barrier(MPI_COMM_WORLD);
  double t1 = MPI_Wtime();
	qsort(rec_buf,N,sizeof(int),cmpfunc);

	//2で何回割れるか調べる
	//C回割れた時は、C回受け取って、C+1回目に送る
	int C = two_devide_128(myid);
	if(C==0){
		MPI_Send((void *)rec_buf, N, MPI_INT, myid-1, 0, MPI_COMM_WORLD);
	}
	else{
		int receive_buf[(C+1)*N];
		for(int j=0; j<N; i++){
      receive_buf[j] = rec_buf[j];
    }
		for(int i=0; i<C; i++){
			int receive_buf1[(i+1)*N];
			for(int j=0; j<(i+1)*N; i++){
				receive_buf1[j] = receive_buf[j];
			}
			int receive_buf2[(i+1)*N];
			MPI_Recv((void*)receive_buf2, (i+1)*N,MPI_INT,(myid+pow2(i+1)),0,MPI_COMM_WORLD,NULL);
    	merge(receive_buf1,receive_buf2,receive_buf,(i+1)*N);
		}
		if(myid !=0){
			MPI_Send((void *)receive_buf, (C+1)*N, MPI_INT, i, 0, MPI_COMM_WORLD);
		}
	}

	//sortできたか確認
	if(myid == 0){
		for(int i=0; i<64*N; i++){printf("%d\n", rec_buf[i]);}
	}
	
		
	//結果を送信
	if(myid == 0){
		for (int i = 1; i < 128; i++){
			int resend_buf[N];
			for(int j=0; j<N; j++){
				resend_buf[j] = receive_buf[(i*N)+j];
			}
			MPI_Send((void *)resend_buf, N, MPI_INT, i, 0, MPI_COMM_WORLD);
		}
		//自分用
    int own_buf[N];
    for(int j=0; j<N; j++){
      own_buf[j] = receive_buf[j];
		} 
	}
	else{
		int re_receive[N];
		MPI_Recv((void*)re_receive, N,MPI_INT,0,0,MPI_COMM_WORLD,NULL);
	}

	MPI_Barrier(MPI_COMM_WORLD);
	double t2 = MPI_Wtime();
	double elapsed = t2 - t1;
	printf("%lf",elapsed);
	MPI_Barrier(MPI_COMM_WORLD);
	MPI_Finalize();
	return 0;
}
