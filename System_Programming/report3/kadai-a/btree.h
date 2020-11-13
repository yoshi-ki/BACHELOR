#ifndef BTREE_H
#define BTRRE_H
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
typedef struct Tree {
    int number;
    struct Tree *right;
    struct Tree *left;
} tnode;

tnode *btree_create();


void btree_insert(int num, tnode *t);

void btree_dump(tnode *t);

void btree_destroy(tnode *t);


#endif
