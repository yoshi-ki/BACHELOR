#include<stdio.h>
#include<stdlib.h>
#include <time.h>

int main(int argc, char *argv[]){
	struct timespec start, end ;

	clock_gettime(CLOCK_REALTIME, &start);

	
	FILE *fp1;
	if ((fp1 = fopen(argv[1], "r")) == NULL) {
   		perror("open error");
   		exit(1);
  	}

	FILE *fp2;
        if ((fp2 = fopen(argv[2], "w")) == NULL) {
                perror("open error");
                exit(1);
        }
	
	char buf[8192];
	while(1){
		int a = fread(buf,1,8192,fp1);
		if (a == 0) break;
		else if (a < 0) {perror("read error"); exit(1);}
		else {
			int b = fwrite(buf,1,a,fp2);
			if(b < a){perror("write error"); exit(1);}
		}
	}

	if (fclose(fp1) == EOF) {
   		perror("close error");
   		exit(1);
 	}
	if (fclose(fp2) == EOF) {
                perror("close error");
                exit(1);
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
