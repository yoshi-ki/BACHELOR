#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>
#include "bb.h"

void *func1 (void *r)
{

	for (int i = 0; i < 10000; i++){
		bb_put(i);
	}

	pthread_exit(NULL);
}

void *func2 (void *r)
{
	for (int i = 0; i < 10000; i++){
	printf("%d\n",bb_get());
	}
	pthread_exit(NULL);
}

int main(){
	pthread_t thread1;
	pthread_create(&thread1, NULL, func1, 0);
	
	pthread_t thread2;
	pthread_create(&thread2, NULL, func2, 0);

	if (pthread_join(thread1,NULL)!=0){
        printf("error: pthread_join\n");
        return 1;
    }
	if (pthread_join(thread2,NULL)!=0){
        printf("error: pthread_join\n");
        return 1;
    }


	return 0;
}

