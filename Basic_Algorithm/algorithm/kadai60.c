#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct lnode {
    struct lnode *next;
    struct Tree *n_obj;
} Node;

typedef struct Tree {
    struct Tree *n_obj;
    char english[100];
    char japanese[100];
} Object;

void CreateList (Node **s) {
  Node *new_node;
  if ((new_node = malloc(sizeof(Node))) == NULL) {
        exit(1);
    }
  new_node->next = *s;
  *s = new_node;
}

int hash(char s[]){
  int num;
  num = strlen(s) % 30;
  return num;
}


void Insert (Node **s, char e[],char j[]){
  Node *temp = *s;
  int num = hash(e);
  int count = 0;
  while (count != num){
    *s = (*s)->next;
    count++;
  }
  if((*s)->n_obj == NULL){
  Object *new_object;
  if ((new_object = malloc(sizeof(Object))) == NULL) {
        exit(1);
    }
  strcpy(new_object->english, e);
  strcpy(new_object->japanese, j);
  (*s)->n_obj = new_object;
  }
  else{
    int flag = 1;
    Object *p = (*s)->n_obj;
    while (p != NULL){
      if(strncmp(p->english,e,strlen(e)) == 0){
        strcpy(p->japanese, j);
        flag--;
        break;
      }
      p = p->n_obj;
    }

    if (flag){
      Object *p = (*s)->n_obj;
      while (p->n_obj != NULL){
        p = p->n_obj;
      }
      Object *new_object;
      if ((new_object = malloc(sizeof(Object))) == NULL) {
            exit(1);
        }
      strcpy(new_object->english, e);
      strcpy(new_object->japanese, j);
      p->n_obj = new_object;
    }
  }
  *s = temp;
}

void Search (Node **s, char e[]){
  Node *temp = *s;
  int num = hash(e);
  int count = 0;
  while (count != num){
    *s = (*s)->next;
    count++;
  }
  if((*s)->n_obj == NULL){
    printf("%s\n","(not found)");
  }
  else{
    Object *p = (*s)->n_obj;
    while (p!= NULL){
      if(strncmp(p->english,e,strlen(e)) == 0){
        printf("%s\n",p->japanese);
        break;
      }else{
      p = p->n_obj;
      if(p == NULL){
        printf("%s\n","(not found)");
        break;
      }
      }
    }
  }
  *s = temp;
}

void Delete(Node **s,char e[]){
  Node *temp = *s;
  int num = hash(e);
  int count = 0;
  while (count != num){
    *s = (*s)->next;
    count++;
  }
  if((*s)->n_obj == NULL){
    printf("%s\n","(not found)");
  }
  else{
    Object *p = (*s)->n_obj;
    if (strncmp(p->english,e,strlen(e)) == 0){
      (*s)->n_obj = p->n_obj;
      free(p);
    }else{
      Object *tmp = p;
      while (p!= NULL){
        if(strncmp(p->english,e,strlen(e)) == 0){
          tmp->n_obj = p->n_obj;
          free(p);
          break;
        }else{
          tmp = p;
          p = p->n_obj;
        }
      }
    }
  }
  *s = temp;
}


int main() {
  char command[100];
  char word[100];
  char tango[100];
  Node *list = NULL;

  for (int i=0;i<30;i++){
    CreateList(&list);
  }


  while (scanf("%99s",command) !=EOF) {
    if (strncmp(command,"insert",6) == 0){
      scanf("%99s",word);
      scanf("%99s",tango);
      Insert(&list, word, tango);
    }
    else if (strncmp(command,"delete",6) == 0){
      scanf("%99s",word);
      Delete(&list, word);
    }
    else if (strncmp(command,"search",6) == 0){
      scanf("%99s",word);
      Search(&list,word);
    }
    else if (strncmp(command,"quit",4) == 0){
      break;
    }
  }

  return 0;
}
