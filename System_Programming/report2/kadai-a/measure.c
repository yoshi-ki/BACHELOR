#include <time.h> //for clock_gettime
#include <sys/types.h> //for getpid
#include <unistd.h> //for getpid

#include<stdio.h>

int main(){
	
	struct timespec start, end ;

	clock_gettime(CLOCK_REALTIME, &start);
	int a = getpid();
	clock_gettime(CLOCK_REALTIME, &end);
	printf("process id is %d\n",a);
	if(end.tv_nsec < start.tv_nsec){
		printf("%10ld.%09ld", end.tv_sec-start.tv_sec - 1, end.tv_nsec + 1000000000 - start.tv_nsec);
		printf("sec\n");
	}
	else{
		printf("%10ld.%09ld",end.tv_sec - start.tv_sec, end.tv_nsec - start.tv_nsec);
		printf("sec\n");
	}

	clock_gettime(CLOCK_REALTIME, &start);
	for (int i=0; i<1000; i++){
		getpid();
	}
	clock_gettime(CLOCK_REALTIME, &end);
	if(end.tv_nsec < start.tv_nsec){
                printf("%10ld.%09ld", end.tv_sec-start.tv_sec - 1, end.tv_nsec + 1000000000 - start.tv_nsec);
		printf("sec\n");
        }
        else{
                printf("%10ld.%09ld",end.tv_sec - start.tv_sec, end.tv_nsec - start.tv_nsec);
		printf("sec\n");
        }

	return 0;
}
