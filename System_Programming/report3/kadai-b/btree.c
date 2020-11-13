#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>

typedef struct Tree {
    int number;
    struct Tree *right;
    struct Tree *left;
} tnode;

tnode *btree_create(){
	tnode *new_node = NULL;
	if((new_node = malloc(sizeof(tnode))) ==NULL){
    	exit(1);
    }
    new_node->left = NULL;
    new_node->right = NULL;
	return new_node;
}

pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;

//0を除く自然数のBST
void btree_insert(int num, tnode *t){
	pthread_mutex_lock(&mutex);	
	if (t == 0){
		//initialize node
		t->number = num;
	}

	if((t->number) >= num){
		//左に追加
		if(t->left == NULL){
			tnode *new_node;
			if((new_node = malloc(sizeof(tnode))) ==NULL){
				exit(1);
			}
			new_node->left = NULL;
			new_node->right = NULL;
			new_node->number = num;
			t->left = new_node;
			pthread_mutex_unlock(&mutex);
		}
		else {
			pthread_mutex_unlock(&mutex);
			btree_insert(num,t->left);
		}
	}
	else {
		if(t->right == NULL){
			// add to right
			tnode *new_node;
			if((new_node = malloc(sizeof(tnode)))==NULL){
				exit(1);
			}
			new_node->left = NULL;
			new_node->right = NULL;
			new_node->number = num;
			t->right = new_node;
			pthread_mutex_unlock(&mutex);
		}
		else{
			pthread_mutex_unlock(&mutex);
			btree_insert(num,t->right);
		}
	}
}

void btree_dump(tnode *t){
	if (t->left == NULL){
		if(t->number != 0) printf("%d\n", t-> number);
		if(!(t->right == NULL)){
            btree_dump(t->right);
        }
	}
	else{
		btree_dump(t->left);
		if(t->number != 0) printf("%d\n",t->number);
		if(!(t->right == NULL)){
			btree_dump(t->right);
		}
	}
}

void btree_destroy(tnode *t){
	if(!(t==NULL)){
	btree_destroy(t->left);
	btree_destroy(t->right);	
	free(t);
	}
}

