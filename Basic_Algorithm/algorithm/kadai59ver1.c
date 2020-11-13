#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int max_2(int a, int b){
  if(a>b) return a;
  else return b;
}

typedef struct Tree {
    char english[100];
    char japanese[100];
    struct Tree *right;
    struct Tree *left;
} Node;

//bazzがbazzword（後から追加）に上書きされてしまっている
//そもそもツリー構造うまく行ってなくね？
void InsertListMember(Node *t, char e[], char j[]){
  if (t->english[0] == '\0' && t->japanese[0] == '\0') {
    printf("A");
    //nodeの初期化
    strcpy(t->english, e);
    strcpy(t->japanese, j);
  }
  else if (strncmp(t->english,e,max_2(strlen(e),strlen(t->english))) == 0){
    //上書き
    printf("B");
    strcpy(t->japanese, j);
  }
  else if (strcmp(t->english,e)>0){
    //左に追加
    printf("C");
    if (t->left == NULL){
      Node *new_node;
      if ((new_node = malloc(sizeof(Node))) == NULL) {
            exit(1);
        }
      new_node->left = NULL; new_node->right = NULL;
      strcpy(new_node->english, e);
      strcpy(new_node->japanese, j);
      t->left = new_node;
    }
    else InsertListMember(t->left,e,j);
  }
  else {
    if (t->right == NULL){
      printf("D");
      //右に追加
      Node *new_node;
      if ((new_node = malloc(sizeof(Node))) == NULL) {
            exit(1);
        }
      new_node->left = NULL; new_node->right = NULL;
      strcpy(new_node->english, e);
      strcpy(new_node->japanese, j);
      t->right = new_node;
    }
    else {
      printf("E");
      InsertListMember(t->right,e,j);
    }
  }
}

//子孫の中で最小を持ってくる関数
//最小nodeを返す
// Node *Deletemin(Node *t,Node *parent){
//   if(t->left == NULL){
//     if(parent->left == t){
//       parent->left = t->left;
//     }
//     else parent->right = t->right;
//     return t;
//   }
//   else{
//     return Deletemin(t, t->left);
//   }
// }

Node *Findmin(Node *parent){
  while(parent->left != NULL){
    parent = parent->left;
  }
  return parent;
}

//消すべきものを消して、残った木をreturnする函数
//そもそも課題のやつは消せてるけど、普通に消せない場合あるし、freeの位置もおかしい
Node *DeleteListMember(Node *t, char e[]){
  if (t == NULL){
    return NULL;
  }
  if (strncmp(t->english,e,max_2(strlen(e),strlen(t->english))) == 0){
    if(t->left == NULL && t->right == NULL){
      free(t);
      t = NULL;
    }
    else if(t->left != NULL && t->right == NULL){
      Node* temp = t;
      temp = t->left;
      free(t);
    }
    else if(t->left == NULL && t->right != NULL){
      Node* temp = t;
      temp = t->right;
      free(temp);
    }
    else{
      //ここでセグフォしている
      Node *temp = Findmin(t->right);
      strcpy(t->english,temp->english);
      strcpy(t->japanese,temp->japanese);
      t->right = DeleteListMember(t->right, temp->english);
    }
    return t;
  }
  else if (strcmp(t->english,e)>0){
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
  else if (strncmp(t->english,e,max_2(strlen(e),strlen(t->english))) == 0){
    printf("%s\n",t->japanese);
  }
  else if (strcmp(t->english,e)>0){
    SearchListMember(t->left,e);
  }
  else {
    SearchListMember(t->right,e);
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
  list->left = NULL; list->right = NULL;

  while (scanf("%99s",command) !=EOF) {
    if (strncmp(command,"insert",6) == 0 && strlen(command)==6){
      scanf("%99s",word);
      scanf("%99s",tango);
      InsertListMember(list, word, tango);
    }
    else if (strncmp(command,"delete",6) == 0 && strlen(command)==6){
      scanf("%99s",word);
      list = DeleteListMember(list, word);
    }
    else if (strncmp(command,"search",6) == 0 && strlen(command)==6){
      scanf("%99s",word);
      SearchListMember(list,word);
    }
    else if (strncmp(command,"quit",4) == 0 && strlen(command)==4){
      break;
    }
  }


  return 0;
}
