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

//環境変数を見る関数
char* lookpath(char* pr){
    int flag = 0;
	struct dirent *dirst1;
    DIR *dp1 = opendir("/usr/local/bin/");
    while((dirst1 = readdir(dp1)) != NULL)
    {
        if(strcmp(dirst1->d_name, pr) == 0){
			flag = 1; break;
		}
    }
    closedir(dp1);
	struct dirent *dirst2;
    DIR *dp2 = opendir("/usr/sbin/");
    while((dirst2 = readdir(dp2)) != NULL)
    {
        if(strcmp(dirst2->d_name, pr) == 0){
            flag = 2; break;
        }
    }
    closedir(dp2);
	struct dirent *dirst3;
    DIR *dp3 = opendir("/usr/bin/");
    while((dirst3 = readdir(dp3)) != NULL)
    {
        if(strcmp(dirst3->d_name, pr) == 0){
            flag = 3; break;
        }
    }
    closedir(dp3);
	struct dirent *dirst4;
    DIR *dp4 = opendir("/sbin/");
    while((dirst4 = readdir(dp4)) != NULL)
    {
        if(strcmp(dirst4->d_name, pr) == 0){
            flag = 4; break;
        }
    }
    closedir(dp4);
	struct dirent *dirst5;
    DIR *dp5 = opendir("/bin/");
    while((dirst5 = readdir(dp5)) != NULL)
    {
        if(strcmp(dirst5->d_name, pr) == 0){
            flag = 5; break;
		}
    }
    closedir(dp5);
	if(flag == 1) {char temp[512] = "/usr/local/bin/";return strcat(temp, pr);}
	else if(flag == 2) {char temp[512] = "/usr/sbin/";return strcat(temp,pr);}
	else if(flag == 3) {char temp[512] = "/usr/bin"; return strcat(temp, pr);}
	else if(flag == 4) {char temp[512] = "/sbin/";return strcat(temp, pr);}
	else if(flag == 5) {char temp[512] = "/bin/";return strcat(temp, pr);}
	else {return "";}
}


void do_child (int i, int cmd_n, job * curr_job, char* argv[], char* envp[]){
	pid_t ret;
	int pp[2] = {};
	if(i == cmd_n - 1){
		//最後に実行する部分（さいしょにforkする部分）
		process* pr = (curr_job->process_list);
		for(int c = 0; c < cmd_n - i - 1; c++){
			pr = pr->next;
		}
		
		//環境変数を見るコード
		int x = 1;
		for (int i = 0 ; i < sizeof(pr->program_name); i++){
			if((pr->program_name)[i] == '/') x = 0;
		}
		char pr_name[512];
		if(x) {
			//環境変数をみる
			strcpy(pr_name, lookpath(pr->program_name));
		}else{
			strcpy(pr_name , pr->program_name);
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
		execve(pr_name,pr->argument_list,envp);
		return ;
	}
	else{
		if (pipe(pp) == -1) perror("pipe error");
		ret = fork();
		if(ret < 0) perror("fork error");
		if(ret == 0){
			close(pp[0]);
			dup2(pp[1],1);
			close(pp[1]);

			do_child(i+1,cmd_n,curr_job,argv,envp);
		}
		else{
			//親プロセス、stdinとつなげて、i番目を実行
			close(pp[1]);
			dup2(pp[0],0);
			close(pp[0]);
			
			process* pr = (curr_job->process_list);
		    for(int c = 0; c < cmd_n - i -1; c++){
        	    pr = pr->next;
        	}
			
			//ここから環境変数をみるコード
			int x = 1;
			for (int i = 0 ; i < sizeof(pr->program_name); i++){
        	    if((pr->program_name)[i] == '/') x = 0;
    	    }
        	char pr_name[512];
        	if(x) {
        	    //環境変数をみる
        	    strcpy(pr_name, lookpath(pr->program_name));
        	}else{
        	    strcpy(pr_name , pr->program_name);
        	}
			//ここまで

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

			execve(pr_name,pr->argument_list,envp);
		}
	
}
}

int main(int argc, char *argv[], char *envp[]) {
    
	char s[LINELEN];
    job *curr_job;

	while(get_line(s, LINELEN)) {
        if(!strcmp(s, "exit\n"))
            break;
		
		pid_t  pid;
    	int status;
    	pid = fork();

		if(pid == 0){

			curr_job = parse_line(s);
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

			pid_t r = waitpid (-1, &status, WUNTRACED);
        	if (r < 0){
            	perror("wait error");
        	}
		}
	}
    return 0;
}
