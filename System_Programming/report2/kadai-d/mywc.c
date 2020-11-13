#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>


int main(int argc, char *argv[]){
	int fd;
	char buf[8192];
	int new_line = 0; 
	int space = 0;
	int words = 0;
	int read_check;
	//空行二連続、空白二連続のカウント
	int count = 0;

	if((fd = open(argv[1],O_RDONLY))<0) {perror("open error");  exit(1);}
	while(1){
		read_check = read (fd, buf, sizeof(buf));
		if(read_check < 0)  {perror("read error");  exit(1);}
		else if (read_check == 0) break;
		else if (read_check > 0) {
			for (int i = 0; i < read_check; i++){
				//iが読み取り部分の最後だった場合
				if(i == read_check -1 ) {
					if(buf[i] == '\n') new_line++;
				}
				
				//最後でない時
				else{	
					//空白が二個続いたとき
					if((buf[i] == '\n'||buf[i] == ' ')&&(buf[i+1] == '\n' || buf[i+1] == ' ')){
						count++;
					}

					if (buf[i] == '\n') new_line++;
					if (buf[i] == ' ') space++;
				}
			}
		words = words + read_check;
		}
	}

	printf("%d %d %d %s\n",new_line,new_line+space-count,words,argv[1]);
	return 0;
}
