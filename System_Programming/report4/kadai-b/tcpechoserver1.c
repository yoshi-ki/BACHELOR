#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <pthread.h>

#define NTHREAD = 1


void *server (void *arg){
	int acc_sd;
	int sd = *(int *)arg;
	socklen_t sin_size = sizeof(struct sockaddr_in);
    struct sockaddr_in from_addr;

	if((acc_sd = accept(sd, (struct sockaddr *)&from_addr, &sin_size)) < 0){
        perror("accept");
        return NULL;
    }


    while(1){


    char buf[2048];
	int receive_check = recv(acc_sd, buf, sizeof(buf),0);
    if(receive_check < 0){
        perror("receive");
        return NULL;
    }
	

    if(send(acc_sd,buf,receive_check,0)< 0){
        perror("resend error");
        return NULL;
    }
	}
	close(acc_sd);
}




int main(int argc, char* argv[]){
    int sd;
    struct sockaddr_in addr;


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
	
	
	pthread_t thread1;
	pthread_t thread2;
		
	pthread_create(&thread1, NULL, server, &sd);
	pthread_create(&thread2, NULL, server, &sd);
	
	pthread_join(thread1,NULL);
	pthread_join(thread2,NULL);

}

