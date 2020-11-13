#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

volatile int count = 0;

void handler(int signum){
	if(count++ >= 9){
		printf("exit\n");
		exit(1);
	}
}

int main(){
	
	struct sigaction si;
	memset(&si, 0, sizeof(si));
	si.sa_handler = handler;
	si.sa_flags = 0;
	if(sigaction(SIGINT,&si,NULL) < 0){
		perror("sigaction");
		exit(1);
	}
	
	for(;;){
		pause();
	}	
		
	return 0;
}
