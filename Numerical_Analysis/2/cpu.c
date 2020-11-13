#include <stdio.h>
#include <time.h>

#define size 32
#define N 100
#define r 0.1
//size is a grid size and N is how many times to calculate


int main(){
	float u_odd [size+2][size+2];
	float u_even [size+2][size+2];

	for(int i = 0; i < size+2; i++){
    for(int j = 0; j < size+2; j++){
      u_even[i][j] = 0;
			u_odd[i][j] = 0;
    }
  }

	//initialize u_even
	for(int i = 1; i < size+1; i++){
		for(int j = 1; j < size+1; j++){
			u_even[i][j] = 1;
		}
	}
	
	clock_t start, end;

	start = clock();
	for(int n = 0; n < N; n++){
		if (n%2 == 0){
		for(int i = 1 ; i < size+1; i++){
			for(int j = 1; j < size+1; j++){
				u_odd[i][j] = (1-4*r)*u_even[i][j] + r*(u_even[i+1][j]+u_even[i-1][j]+u_even[i][j+1] + u_even[i][j-1]);
			}
		}
		}
		else {
		for(int i = 1 ; i < size+1; i++){
      for(int j = 1; j < size+1; j++){
        u_even[i][j] = (1-4*r)*u_odd[i][j] + r*(u_odd[i+1][j]+u_odd[i-1][j]+u_odd[i][j+1] + u_odd[i][j-1]);
      }
    }
    }
	}
	end = clock();
	printf("Elapsed time = %lf\n", (double)(end-start));
			
	for(int i = 1; i < size+1; i++){
    for(int j = 1; j < size+1; j++){
      printf("%f ",u_even[i][j]);
    }
		printf("\n");
  }	


  return 0;
}
