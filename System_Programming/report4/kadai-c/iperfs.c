#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <arpa/inet.h>

int main(int argc, char* argv[]){
	int sd;
	int acc_sd;
	struct sockaddr_in addr;

	socklen_t sin_size = sizeof(struct sockaddr_in);
	struct sockaddr_in from_addr;

	if((sd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP))<0){
		perror("socket create error");
		return -1;
	}

	addr.sin_family = AF_INET;
	addr.sin_port = htons(atoi(argv[1]));
	addr.sin_addr.s_addr = INADDR_ANY;
	

	if(bind(sd, (struct sockaddr *)&addr, sizeof(addr)) < 0){
		perror("bind");
		return -1;
	}

	if(listen(sd, 10) < 0){
		perror("bind");
		return -1;
	}
	if((acc_sd = accept(sd, (struct sockaddr *)&from_addr, &sin_size)) < 0){
		perror("accept");
		return -1;
	}
	
		char buf [1000000];
		for (int i = 0; i < 1000000; i++)
			buf[i] = '0';
		
		for(int i = 0; i < 100000; i++){
		if(send(acc_sd,buf,sizeof(buf),0)< 0){
			perror("resend error");
            return -1;
        }
		}
		close(acc_sd);
	}


