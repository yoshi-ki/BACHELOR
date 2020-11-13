#include <unistd.h>
#include <stdio.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <dirent.h>
#include "parse.h"

void print_job_list(job*);


void do_child (int i, int cmd_n, job * curr_job, char* argv[], char* envp[]){
	pid_t ret;
	int pp[2] = {};
	if(i == cmd_n - 1){
		//最後に実行する部分（さいしょにforkする部分）
		process* pr = (curr_job->process_list);
		for(int c = 0; c < cmd_n - i - 1; c++){
			pr = pr->next;
		}
		if((pr->input_redirection)!=NULL){
				int file_in;
                file_in = open((pr->input_redirection),O_RDONLY);
                close(0);
                dup2(file_in,0);
                close(file_in);
        }

		if((pr->output_redirection) != NULL){
			int file_out;
			(pr->output_option) == TRUNC ? (file_out = open((pr->output_redirection),O_WRONLY|O_CREAT|O_EXCL,0666)) :  (file_out = open((pr->output_redirection),O_WRONLY|O_APPEND|O_EXCL,0666));
			close(1);
			dup2(file_out,1);
			close(file_out);
		}
		execve(pr->program_name,pr->argument_list,envp);
		return ;
	}
	else{
		if(pipe(pp) < 0) perror("pipe error");
		ret = fork();
		if(ret == 0){
			close(pp[0]);
			dup2(pp[1],1);
			close(pp[1]);

			do_child(i+1,cmd_n,curr_job,argv,envp);
		}
		else{
			//親プロセスならstdinとつなげて、i番目を実行
			close(pp[1]);
			dup2(pp[0],0);
			close(pp[0]);
			
			process* pr = (curr_job->process_list);
		    for(int c = 0; c < cmd_n - i -1; c++){
        	    pr = pr->next;
        	}

			if((pr->input_redirection)!=NULL){
				int file_in;
				file_in = open((pr->input_redirection),O_RDONLY);
				close(0);
				dup2(file_in,0);
				close(file_in);
			}
			if((pr->output_redirection) != NULL){
            	int file_out;
				(pr->output_option) == TRUNC ? (file_out = open((pr->output_redirection),O_WRONLY|O_CREAT|O_EXCL,0666)) :  (file_out = open((pr->output_redirection),O_WRONLY|O_APPEND|O_EXCL,0666));
				close(1);
            	dup2(file_out,1);
            	close(file_out);
        	}

			execve(pr->program_name,pr->argument_list,envp);
		}
	
}
}

pid_t process_id [10000];
int count = 0;
int redo = 0;

pid_t back_pid [10000];
int back_count = 0;
int back_redo = 0;

//SIGCHLDを受け取ったときの処理
void handler (int signum){
	int status;
	pid_t p;
	while((p = waitpid(-1,&status,WNOHANG)) > 0){
		back_redo ++;
	}
}

int main(int argc, char *argv[], char *envp[]) {
    
	char s[LINELEN];
    job *curr_job;

	struct sigaction si;
    memset(&si, 0, sizeof(si));
    si.sa_handler = SIG_IGN;
    si.sa_flags = 0;
	sigemptyset(&si.sa_mask);
    sigaction(SIGTTIN,&si,NULL);
	sigaction(SIGTTOU,&si,NULL);
	sigaction(SIGTSTP,&si,NULL);
	sigaction(SIGINT,&si,NULL);
	si.sa_handler = handler;
    sigaction(SIGCHLD,&si,NULL);

	while(get_line(s, LINELEN)) {
        if(!strcmp(s, "exit\n"))
            break;
		if(strcmp(s,"bg\n") == 0) {
			if(kill(process_id[redo],SIGCONT) < 0) {perror("kill error");}
			redo++;
			continue;
		}
		if(strcmp(s,"fg\n") == 0) {
			int stat;
			if(tcsetpgrp(0,getpgid(back_pid[back_redo])) < 0) {perror("tcsetpgrp"); exit(1);}
			waitpid(-1,&stat,WUNTRACED);
			if(tcsetpgrp(0,getpgid(0)) < 0) {perror("tcsetpgrp"); exit(1);}
			back_redo++;
			continue;
        }
			
		curr_job = parse_line(s);
		if(curr_job  == NULL) continue;
		pid_t  pid;
    	int status;
    	pid = fork();

		if(pid == 0){

			//processgidを取ってきて、それをforegroundにする 
			pid_t pi;
			pi = getpid();
			if(setpgid(pi,0) < 0) {perror("setpgid"); exit(1);}
            if(curr_job -> mode == FOREGROUND){

				if(tcsetpgrp(0,getpgid(pi)) < 0) {perror("tcsetpgrp"); exit(1);}
			 	struct sigaction si2;
	    	    memset(&si2, 0, sizeof(si2));
    	    	si2.sa_handler = SIG_DFL;
    	   		si2.sa_flags = 0;
				sigemptyset(&si2.sa_mask);
				sigaction(SIGTTIN,&si2,NULL);
		    	sigaction(SIGTTOU,&si2,NULL);
				sigaction(SIGINT,&si2,NULL);
				sigaction(SIGCONT,&si2,NULL);
				sigaction(SIGTSTP,&si2,NULL);
			}
			if(curr_job -> mode == BACKGROUND){
			}


			//pipeでつながっているprocessの数を調べる
			int cmd_n = 1;
			process* hoge = (curr_job->process_list);
			while(1){
				hoge = hoge->next;
				if(hoge == NULL) break;
				cmd_n++;
			}
			//ここから実行
			do_child (0,cmd_n,curr_job,argv,envp);
			free_job(curr_job);
			exit(1);
		}

		else if(pid < 0) {perror("fork error"); exit(1);}
		else{
			if(curr_job -> mode == BACKGROUND){
				back_pid[back_count] = pid;
				back_count++;
			}
			
			if(curr_job -> mode == FOREGROUND){
				pid_t r = waitpid (pid, &status, WUNTRACED);
				if(WIFSTOPPED(status)) {
        		    process_id[count] = r;
					count++;
        		}

				pid_t pi;
				pi = getpid();
            	if(tcsetpgrp(0,getpgid(pi)) < 0) {perror("tcsetpgrp"); exit(1);}
			
				if (r < 0){
            		perror("wait error");
        		}
			}
		}
        
	}
    return 0;
}
