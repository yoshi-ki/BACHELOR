#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
	int fd;
        char buf[512];
	if((fd = open(argv[1],O_RDONLY))<0) {perror("open error");  exit(1);}

	struct stat stat_buf;
	stat(argv[1],&stat_buf);
	int access = stat_buf.st_mode;	
	
	int fd2;
	if((fd2 = open(argv[2],O_WRONLY|O_CREAT|O_EXCL, access))<0) {perror("open error"); exit(1);}
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

	return 0;
}
