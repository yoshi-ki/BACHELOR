#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <sys/epoll.h>

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
	
	
	int N = 10;
	struct epoll_event ev, events[N];
	int epollfd;
	if((epollfd = epoll_create1(0)) < 0){
		perror("epoll create error");
		return -1;
	}
	ev.data.fd = sd;
	ev.events = EPOLLIN;
	if((epoll_ctl(epollfd,EPOLL_CTL_ADD,sd,&ev)) < 0){
		perror("epoll_ctl error");
		return -1;
	}


	while(1){
		int nfds = epoll_wait(epollfd,events,N,-1);
		for(int i = 0; i < nfds; i++){
			/*if(events[i].events & EPOLLIN){*/
				if(events[i].data.fd == sd){
					if((acc_sd = accept(sd, (struct sockaddr *)&from_addr, &sin_size)) < 0){
        				perror("accept");
        				return -1;
				    }
					ev.events = EPOLLIN | EPOLLET;
					ev.data.fd = acc_sd;
					if((epoll_ctl(epollfd,EPOLL_CTL_ADD,acc_sd,&ev)) < 0){
						perror("epoll_ctl error");
						return -1;
					}
				}

				else{					
				
				char buf[2048];

				int acc_sd = events[i].data.fd;

				int receive_check = recv(acc_sd, buf, sizeof(buf),0);
				if(receive_check < 0){
		            perror("receive");
        		    return -1;
       			}

       			if(send(acc_sd,buf,receive_check,0)< 0){
           			perror("resend error");
            		return -1;
				}
				
				/*
				close(acc_sd);
				epoll_ctl(epollfd, EPOLL_CTL_DEL, acc_sd, &ev);
				*/
				}
			
		}
	}
}


