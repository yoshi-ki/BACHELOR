#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>
#include "btree.h"
void *func (void *r)
{
	int c = 0;
	while(c != 500){
        btree_insert(1,(tnode *) r);
        btree_insert(1,(tnode *) r);
		btree_insert(2,(tnode *) r);
		btree_insert(3,(tnode *) r);
        btree_insert(4,(tnode *) r);
        c++;
    }
	pthread_exit(NULL);
}

int main(){
	tnode *tree;
	tree = btree_create();

	pthread_t thread1;
	pthread_create(&thread1, NULL, func, (void *)tree);
	
	pthread_t thread2;
    pthread_create(&thread2, NULL, func, (void *)tree);

    pthread_t thread3;
	pthread_create(&thread3, NULL, func, (void *)tree);

    pthread_t thread4;
    pthread_create(&thread4, NULL, func, (void *)tree);

	if (pthread_join(thread1,NULL)!=0){
        printf("error: pthread_join\n");
        return 1;
    }
	if (pthread_join(thread2,NULL)!=0){
        printf("error: pthread_join\n");
        return 1;
    }
	if (pthread_join(thread3,NULL)!=0){
       	printf("error: pthread_join\n");
        return 1;
	}
	if (pthread_join(thread4,NULL)!=0){
        printf("error: pthread_join\n");
        return 1;
    }


	btree_dump(tree);
    btree_destroy(tree);
	return 0;
}


