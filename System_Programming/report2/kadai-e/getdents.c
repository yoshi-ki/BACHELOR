#define _GNU_SOURCE
#include <dirent.h>     /* Defines DT_* constants */
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/syscall.h>
#include <time.h>
#include <pwd.h>
#include <grp.h>

struct linux_dirent {
    long           d_ino;
    off_t          d_off;
    unsigned short d_reclen;
    char           d_name[];
};



void strmode (mode_t mode, char * buf){
	const char chars[] = "rwxrwxrwx";
	for (size_t i = 0; i < 9; i++){
		buf[i] = (mode & (1 << (8-i))) ? chars[i] : '-';
	}
	buf[9] = '\0';
}

void f_dr_judge(struct stat s){
	if (S_ISREG(s.st_mode)) {
 	   printf("-");
	}
	if (S_ISDIR(s.st_mode)){
	   printf("d");
	}
}

int main(int argc, char *argv[])
{
    int fd, nread;
    char buf[1024];
    struct linux_dirent *d;
    int bpos;

    fd = open(argc > 1 ? argv[1] : ".", O_RDONLY | O_DIRECTORY);
    if (fd <0)
        {perror("error"); exit(1);}

    while (1) {
        nread = syscall(SYS_getdents, fd, buf,1024);
        if (nread == -1)
	{perror("error"); exit(1);}

        if (nread == 0)
            break;
	
	int blocksize = 0;

        for (bpos = 0; bpos < nread;) {
            d = (struct linux_dirent *)(buf + bpos);
	    bpos += d->d_reclen;	    
	    if(d->d_name[0] != '.'){ 
	    struct stat stat_buf;
	    stat(d->d_name,&stat_buf);
	    char buf[10];
	    f_dr_judge(stat_buf);
	    strmode(stat_buf.st_mode,buf);
	    printf("%s ", buf);
	    printf("%ld ",stat_buf.st_nlink);
	    printf("%s ", (getpwuid(stat_buf.st_uid))->pw_name);
	    printf("%s ", (getgrgid(stat_buf.st_gid))->gr_name);
	    printf("%ld ",stat_buf.st_size);
	    struct tm *tmstamp;
	    tmstamp = localtime(&stat_buf.st_mtime);
	    printf("%d月 %d %02d:%02d ",tmstamp->tm_mon + 1,tmstamp->tm_mday,tmstamp->tm_hour,tmstamp->tm_min);
	    printf("%s\n",d->d_name);
		
	    blocksize += stat_buf.st_blocks;
	    }

        }
 	printf("合計%d\n",blocksize/2);

    }

}
