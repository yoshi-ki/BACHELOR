#include <time.h> //for clock_gettime
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>


int main(int argc, char *argv[]){
	int fd;
        char buf[8192];
	struct timespec start, end ;


	clock_gettime(CLOCK_REALTIME, &start);

	if((fd = open(argv[1],O_RDONLY))<0) {perror("open error");  exit(1);}
	int fd2;
	if((fd2 = open(argv[2],O_WRONLY|O_CREAT,0644))<0) {perror("open error"); exit(1);}
	int write_check;
	int read_check;
	
	while(1){
		read_check = read (fd, buf, sizeof(buf));
		if(read_check < 0) {perror("read error");  exit(1);}
		else if(read_check == 0) break;
		else if (read_check > 0){
			write_check = write(fd2,buf,read_check);
			if (write_check < 0) {perror("write error"); exit(1);}
		}
	}
	if(close(fd)<0) {perror("close error"); exit(1);}
	if(close(fd2)<0) {perror("close error"); exit(1);}
	
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
