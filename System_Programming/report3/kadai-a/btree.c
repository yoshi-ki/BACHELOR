#include <stdio.h>
#include <stdlib.h>
#include <string.h>

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


//0を除く自然数のBST
void btree_insert(int num, tnode *t){
	if (t == NULL){
		//initialize node
		t->number = num;
	}
	else if(t->number >= num){
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
		}
		else btree_insert(num,t->left);
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
		}
		else{
			btree_insert(num,t->right);
		}
	}
}

void btree_dump(tnode *t){
	if (t->left == NULL){
		printf("%d\n", t-> number);
		if(!(t->right == NULL)){
            btree_dump(t->right);
        }
	}
	else{
		btree_dump(t->left);
		printf("%d\n",t->number);
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

