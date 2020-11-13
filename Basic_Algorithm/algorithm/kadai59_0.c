#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Tree {
    char english[100];
    char japanese[100];
    struct Tree *right;
    struct Tree *left;
} Node;

void InsertListMember(Node *t, char e[], char j[]){
  if (strncmp(t->english,e,strlen(e)) == 0){
    strcpy(t->japanese, j);
  }
  else if (strcmp(t->english,e) ){
    if (t->left == NULL){
      Node *new_node;
      if ((new_node = malloc(sizeof(Node))) == NULL) {
            exit(1);
        }
      strcpy(new_node->english, e);
      strcpy(new_node->japanese, j);
      t->left = new_node;
    }
    else InsertListMember(t->left,e,j);
  }
  else {
    if (t->right == NULL){
      Node *new_node;
      if ((new_node = malloc(sizeof(Node))) == NULL) {
            exit(1);
        }
      strcpy(new_node->english, e);
      strcpy(new_node->japanese, j);
      t->right = new_node;
    }
    else InsertListMember(t->right,e,j);
  }
}

Node *Deletemin(Node *t,Node *parent){
  if(t->left == NULL){
    printf("[2] %s¥n", t->english);
    if(parent->left == t){
      parent->left = t->left;
    }
    else parent->right = t->right;
    return t;
  }
  else{
    printf("[1] %s¥n", t->english);
    return Deletemin(t, t->left);
  }
}

Node *DeleteListMember(Node *t, char e[]){
  if (t == NULL){
    return NULL;
  }
  if (strncmp(t->english,e,strlen(e)) == 0){
    if(t->left == NULL && t->right == NULL){
      return t;
    }
    else if(t->left != NULL && t->right == NULL){
      return t->left;
    }
    else if(t->left == NULL && t->right != NULL){
      return t->right;
    }
    else{
      Node *min = Deletemin(t,t->right);
      min->left = t->right;
      min->right = t->right;
      return min;
    }
    printf("a");
    free(t);
  }
  else if (strcmp(t->english,e)){
    t->left = DeleteListMember(t->left,e);
    return t;
  }
  else{
    t->right = DeleteListMember(t->right,e);
    return t;
  }
}


void SearchListMember(Node *t, char e[]){
  if (t == NULL){
    printf("%s\n","(not found)");
  }
  else if (strncmp(t->english,e,strlen(e)) == 0){
    printf("%s\n",t->japanese);
  }
  else if (strcmp(t->english,e)){
    SearchListMember(t->left,e);
  }
  else SearchListMember(t->right,e);
}


void PrintNodes(Node* node, int n){
  if (node != NULL) {
      for(int i=0; i < n; i++) printf("\t");
      printf("%s:%s\n", node->english, node->japanese);
      for(int i=0; i < n; i++) printf("\t");
      printf("left:\n");
      PrintNodes(node->left, n+1);
      for(int i=0; i < n; i++) printf("\t");
      printf("right:\n");
      PrintNodes(node->right, n+1);
  }
}



int main(){
  char command[100];
  char word[100];
  char tango[100];
  Node* list = NULL;
  if ((list = malloc(sizeof(Node))) == NULL) {
        exit(1);
      }


  while (scanf("%99s",command) !=EOF) {
    if (strncmp(command,"insert",6) == 0){
      scanf("%99s",word);
      scanf("%99s",tango);
      InsertListMember(list, word, tango);
    }
    else if (strncmp(command,"delete",6) == 0){
      scanf("%99s",word);
      list = DeleteListMember(list, word);
    }
    else if (strncmp(command,"search",6) == 0){
      scanf("%99s",word);
      SearchListMember(list,word);
    }
    else if (strncmp(command,"quit",4) == 0){
      break;
    }

    PrintNodes(list, 0);
  }

  return 0;
}
