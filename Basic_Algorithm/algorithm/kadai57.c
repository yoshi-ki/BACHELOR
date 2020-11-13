#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct lnode {
    int number;
    struct lnode *next;
} Node;

void AppendListMember (Node **s, int num) {

  Node *new_node;
  if ((new_node = malloc(sizeof(Node))) == NULL) {
        exit(1);
    }
  new_node->number = num;
  new_node->next = *s;

  *s = new_node;

}

void PrintListMember (Node *s){
  while (s != NULL){
    printf("%d ",s->number);
    s = s->next;
  }
  printf("\n");
}

int CountListSize (Node *s){
  int c = 0;
  while (s != NULL){
    s = s->next;
    c++;
  }
  return c;
}


void DeleteListMember (Node **s, int i){

  if (i != 0){
    int c = 0;
    Node *tmp = *s;
    while (c != i-1){
      *s = (*s)->next;
      c++;
    }
    Node *temp = (*s)->next;
    (*s)->next = ((*s)->next)->next;
    free(temp);
    *s = tmp;
  }
  if (i == 0){
    Node *temp = *s;
    *s = (*s)->next;
    free(temp);
  }
}

void InsertListMember (Node **s, int i, int num){
  if(i != 0){
  int c = 0;
  Node *tmp = *s;
  while (c != i-1){
    *s = (*s)->next;
    c++;
  }

  Node *new_node;
  if ((new_node = malloc(sizeof(Node))) == NULL) {
        exit(1);
    }
  new_node->number = num;
  new_node->next = (*s)->next;

  (*s)->next = new_node;
  *s = tmp;
  }

  if(i == 0){
    Node *new_node;
    if ((new_node = malloc(sizeof(Node))) == NULL) {
          exit(1);
      }
    new_node->number = num;
    new_node->next = (*s)->next;
    *s = new_node;
  }
}

int PopListMember(Node **s){
  int c = (*s)->number;

  Node *temp = *s;
  *s = (*s)->next;
  free(temp);

  return c;

}


void PushListMember (Node **s, int num) {

  Node *new_node;
  if ((new_node = malloc(sizeof(Node))) == NULL) {
        exit(1);
    }
  new_node->number = num;
  new_node->next = *s;

  *s = new_node;

}

int main(void)
{
    Node* list = NULL;

    char l[100] = "";
    scanf("%99s", l);

    for (int i = 0; i < strlen(l); i++){
      if (l[i] == '('){
        PushListMember(&list,i);
      }
      if (l[i] == ')'){
        int num = PopListMember(&list);
        printf("%c",'(');
        printf("%d",num);
        printf("%c",',');
        printf("%d",i);
        printf("%c",')');
        printf("%c",' ');

      }
    }



    return 0;
}
