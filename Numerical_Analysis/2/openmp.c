#include <stdio.h>
#include <omp.h>

#define size 32
#define N 5
#define r 0.1
#define value 32
//size is a grid size and N is how many times to calculate


int main(){
	omp_set_num_threads(value);
	float u_odd [size+2][size+2];
	float u_even [size+2][size+2];

	#pragma ompparallel for private(j)
	for(int i = 0; i < size+2; i++){
    for(int j = 0; j < size+2; j++){
      u_even[i][j] = 0;
			u_odd[i][j] = 0;
    }
  }

	//initialize u_even
	#pragma ompparallel for private(j)
	for(int i = 1; i < size+1; i++){
		for(int j = 1; j < size+1; j++){
			u_even[i][j] = 1;
		}
	}

	for(int n = 0; n < N; n++){
		if (n%2 == 0){
		#pragma ompparallel for private(j)
		for(int i = 1 ; i < size+1; i++){
			for(int j = 1; j < size+1; j++){
				u_odd[i][j] = (1-4*r)*u_even[i][j] + r*(u_even[i+1][j]+u_even[i-1][j]+u_even[i][j+1] + u_even[i][j-1]);
			}
		}
		}
		else {
		#pragma ompparallel for private(j)
		for(int i = 1 ; i < size+1; i++){
      for(int j = 1; j < size+1; j++){
        u_even[i][j] = (1-4*r)*u_odd[i][j] + r*(u_odd[i+1][j]+u_odd[i-1][j]+u_odd[i][j+1] + u_odd[i][j-1]);
      }
    }
    }
	}

	#pragma ompparallel for private(j)
	for(int i = 1; i < size+1; i++){
    for(int j = 1; j < size+1; j++){
      printf("%f ",u_even[i][j]);
    }
		printf("\n");
  }


  return 0;
}
