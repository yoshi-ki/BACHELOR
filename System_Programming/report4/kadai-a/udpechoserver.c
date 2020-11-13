#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <arpa/inet.h>

int main(int argc, char* argv[]){
	int sd;
	struct sockaddr_in addr;

	socklen_t sin_size;
	struct sockaddr_in from_addr;

	if((sd = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP))<0){
		perror("socket create error");
		return -1;
	}
	addr.sin_family = AF_INET;
	addr.sin_port = htons(atoi(argv[1]));
	addr.sin_addr.s_addr = INADDR_ANY;

	if(bind(sd, (struct sockaddr *) &addr, sizeof(addr)) < 0){
		perror("bind error");
		return -1;
	}
	


	while(1){
		char buf[2048];

		sin_size = sizeof(from_addr);
		int n = recvfrom(sd,buf,sizeof(buf),0,(struct sockaddr *)&from_addr, &sin_size);
		if(n < 0) {
	 		perror("receive error");
			return -1;
		}
	
		
		//送り返す
		if(sendto(sd,buf,n,0,(struct sockaddr *)&from_addr, sin_size) < 0){
			perror("resend error");
			return -1;
		}

	}
}
