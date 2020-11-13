#include <stdio.h>
#include <cuda.h>
#include <cuda_runtime.h>
#include <sys/time.h>
#define size 4096
#define row 16
#define loop 256
//row is size/(32*sqrt(brock_num)) and loop % 2^2n == 0 loop = row^2
#define N 100
#define r 0.1
#define blocksize 1024
//size is a grid size and N is how many times to calculate
#define block_num 64

__global__
void calc(float *u1, float *u2, int n){
	int i2 = threadIdx.x;
	int i3 = blockIdx.x;
	int i4 = blockDim.x;


	for(int j = 0; j < loop; j++){
   	//int i = i2 + blockrow*(j%row) + (j/row) * blocksize * row;
   	int i = i2 + i4 * j + i4*loop*i3;
		i = i + ((i/size)*2) + 1 + (size + 2);
		if(n%2==0){
			float x1 = u1[i]; float x2 = u1[i+1]; float x3 = u1[i-1]; float x4 = u1[i+(size+2)]; float x5 = u1[i-(size+2)];
    	//__syncthreads();
    	u2[i] = (1 - 4*r) * x1 + r * (x2 + x3 + x4 + x5);
    	__syncthreads();	
		}
		else {
			float x1 = u2[i]; float x2 = u2[i+1]; float x3 = u2[i-1]; float x4 = u2[i+(size+2)]; float x5 = u2[i-(size+2)];
    	//__syncthreads();
    	u1[i] = (1 - 4*r) * x1 + r * (x2 + x3 + x4 + x5);
    	__syncthreads();
    }
	}
	return ;
}



int main(){

	float u_odd [(size+2)*(size+2)];
	float u_even [(size+2)*(size+2)];
	float u_result [(size+2)*(size+2)];

	float* u1;
	float* u2;

	for(int i = 0; i < (size+2)*(size+2); i++){
    u_even[i] = 0;
		u_odd[i] = 0;
		u_result[i] = 0;
  }

	//initialize u_even
	for(int i = 0; i < (size+2)*(size+2); i++){
		if(i % (size+2) != 0 && i % (size+2) != (size+1) && i/(size+2) != 0 && i/(size+2) != (size+1)){
			u_even[i] = 1;
		}
	}


	struct timeval t0,t1;

	const int csize = (size+2)*(size+2)*sizeof(float);
	cudaMalloc((void**)&u1,csize);
	cudaMalloc((void**)&u2,csize);
	if (N%2 == 0){
		cudaMemcpy(u1,u_even,csize,cudaMemcpyHostToDevice);
		cudaMemcpy(u2,u_odd,csize,cudaMemcpyHostToDevice);
	}else{
		cudaMemcpy(u2,u_even,csize,cudaMemcpyHostToDevice);
    cudaMemcpy(u1,u_odd,csize,cudaMemcpyHostToDevice);
	}
	dim3 dimBlock(blocksize,1);
	dim3 dimGrid(block_num,1);
	//時間ぶんloopする
  gettimeofday(&t0, NULL);
	for (int i = N; i > 0; i--){
		calc<<<dimGrid,dimBlock>>>(u1,u2,i);
		cudaThreadSynchronize();
	}
	gettimeofday(&t1, NULL);
	cudaMemcpy(u_result,u1,csize,cudaMemcpyDeviceToHost);
	cudaFree(u1);
	cudaFree(u2);
	
	printf("Elapsed time = %lf\n",((double)(t1.tv_sec - t0.tv_sec) + (double)(t1.tv_usec - t0.tv_usec)*1.0e-6));

/*
	for(int i = 0; i < (size+2)*(size+2); i++){
    if (i % (size+2) != 0 && i % (size+2) != (size+1) && i/(size+2) != 0 && i/(size+2) != (size+1)){
		printf("%.3f ",u_result[i]);
		}
		if(i % (size+2) == (size+1)){
			printf("\n");
		}
  }
*/
	
  return EXIT_SUCCESS;
}
