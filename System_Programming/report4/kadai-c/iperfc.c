#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <string.h>
#include <time.h>
#include <sys/stat.h>
#include <fcntl.h>

int main(int argc, char* argv[]){
	int sd;
    struct sockaddr_in addr;
    struct timespec ans_time;
	ans_time.tv_sec = 0; 
	ans_time.tv_nsec = 0;
	unsigned long long int ans_num = 0;

	if((sd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) < 0){
		perror("socket");
		return -1;
	}
	
	addr.sin_family = AF_INET;
	addr.sin_port = htons(atoi(argv[2]));
	addr.sin_addr.s_addr = inet_addr(argv[1]);
	
	if((connect(sd, (struct sockaddr *)&addr, sizeof(struct sockaddr_in)))<0){
		perror("connect error");
		return -1;
	}


		struct timespec start, end;
		start.tv_sec = 0;
    	start.tv_nsec = 0;
		end.tv_sec = 0;
    	end.tv_nsec = 0;
	
		
		clock_gettime(CLOCK_REALTIME, &start);
		
		char receivebuf[1000000];
        int receive_check;	

	while(1){			

		receive_check = recv(sd,receivebuf,sizeof(receivebuf),0);
    	if(receive_check < 0){
        	perror("receive error");
        	return -1;
    	}

		if(receive_check == 0){
			clock_gettime(CLOCK_REALTIME, &end);
			close(sd);
			break;
		}
		ans_num = ans_num + receive_check;
	}

		if(end.tv_nsec < start.tv_nsec){
            ans_time.tv_sec = end.tv_sec-start.tv_sec - 1;
            ans_time.tv_nsec = end.tv_nsec + 1000000000 - start.tv_nsec;
        }
        else{
            ans_time.tv_sec = end.tv_sec - start.tv_sec;
            ans_time.tv_nsec = end.tv_nsec - start.tv_nsec;
        }

	printf("%lld ",ans_num);
	printf("%10ld.%09ld ",ans_time.tv_sec,ans_time.tv_nsec);
	printf("%5lf\n", ans_num*8/((ans_time.tv_sec+(1e-9)*ans_time.tv_nsec)*1e6));

}

