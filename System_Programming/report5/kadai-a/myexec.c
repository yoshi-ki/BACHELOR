#include <unistd.h>
#include <stdio.h>
#include <sys/wait.h>
#include <stdlib.h>

int main (int argc, char *argv[], char *envp[])
{
	pid_t  pid;
	int status;
	pid = fork();
	if(pid == 0){
	/*child process */
		execve(argv[1],argv+1,envp);
		exit(1);
	}
	else if (pid < 0) {perror("fork");exit(1);}
	else {
	/* parent process */
		pid_t r = waitpid (pid, &status, WUNTRACED);
		if (r < 0){
			perror("wait error");
		}
	}

}



