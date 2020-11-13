#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <string.h>

int main(int argc, char* argv[]){
    int sd;
    struct sockaddr_in addr;
    
    socklen_t sin_size;
    struct sockaddr_in from_addr;
    
    if((sd = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP))<0){
        perror("socket create error");
        return -1;
    }

	//送信のための準備
	addr.sin_family = AF_INET;
	addr.sin_port = htons(atoi(argv[2]));
	addr.sin_addr.s_addr = inet_addr(argv[1]);


	while(1){
	char sendbuf[2048];
	
	
	int read_check = read(0, sendbuf, 2048);
	if(read_check<0){perror("read error"); return -1;}
	if(read_check == 0) break;
	

	if(sendto(sd, sendbuf, read_check, 0, (struct sockaddr *) &addr, sizeof(addr))<0)
	{
		perror("send error");
		return -1;
	}

	char receivebuf[2048];
	
	int receive_check;
	int write_check;
	
	receive_check = recvfrom(sd,receivebuf,read_check,0,(struct sockaddr *) &from_addr, &sin_size);
	if(receive_check < 0) {perror("receive error"); return -1;}

	do{	char *point = receivebuf;
		write_check = write(1, receivebuf, receive_check);
		if(write_check < 0){ perror("write error"); return -1;}
		receive_check -= write_check;
		point += write_check;
		}while(receive_check > 0);
	
	if(receive_check < 0){
        perror("receive error");
        return -1;
    }
	

	}
}
