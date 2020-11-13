#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int min2 (int a, int b){
  if(a > b) return b;
  else return a;
}

//数字から文字列に変換する配列
char dictionary [1010][1010];

typedef struct Tree {
    char english[100];
    int place;
    int beforenode;
    struct Tree *right;
    struct Tree *left;
} Node;

void InsertListMember(Node *t, char e[], int number){
  if (strncmp(t->english,e,strlen(e)) == 0){
    t->place =  number;
  }
  else if (strcmp(t->english,e) ){
    if (t->left == NULL){
      Node *new_node;
      if ((new_node = (struct Tree*)malloc(sizeof(Node))) == NULL) {
            exit(1);
        }
      strcpy(new_node->english, e);
      new_node->place = number;
      //この下の行を入れるとなぜか通る、だけどおかしいよね
      new_node->left = NULL;
      new_node->right = NULL;
      //beforenodeでセグフォするときはここに回って来ている
      //そしてこの下の行がおかしい
      //と思っていたが、どうもここの二回目が怪しい
      t->left = new_node;
    }
    //セグフォする前はここを通っている
    else InsertListMember(t->left,e,number);
  }
  else {
    if (t->right == NULL){
      Node *new_node;
      if ((new_node = (struct Tree*)malloc(sizeof(Node))) == NULL) {
            exit(1);
        }
      strcpy(new_node->english, e);
      new_node->place = number;
      //この二行も追加
      new_node->left = NULL;
      new_node->right = NULL;

      t->right = new_node;
    }
    else InsertListMember(t->right,e,number);
  }
}



int SearchListMember(Node *t, char e[]){
  if (t == NULL){
    return -1;
  }
  else if (strncmp(t->english,e,strlen(e)) == 0){
    return t->place;
  }
  else if (strcmp(t->english,e)){
    return SearchListMember(t->left,e);
  }
  else return SearchListMember(t->right,e);
}


Node *searchNode (Node *t, char e[]){
  if (t == NULL){
    return NULL;
  }
  else if (strncmp(t->english,e,strlen(e)) == 0){
    return t;
  }
  else if (strcmp(t->english,e)){
    return searchNode(t->left,e);
  }
  else return searchNode(t->right,e);
}



int distance[1010][1010];

int USED[1010] = {0};


void dijkstra(int place, int cost[], Node *t){
  //初期化、直接移動
  for (int i = 0; i < place; i++){
    if(distance[0][i] <= 9999999){
      (searchNode(t,dictionary[i]))->beforenode = 0;
    }
    cost[i] = distance[0][i];
  }

  int w;
  USED[0] = 1;
  int c = 1;
  //今回のwを決める　終了はcでカウントしている
  //wは更新の起点一番スタートに近い点
  while(c!=place){
  int min = 10000000;
  for (int i = 1; i < place; i++){
    if(!USED[i] && min>cost[i]){
      min = cost[i];
      w = i;
    }
  }
  //costの更新をする
  for(int i = 0; i < place; i++){
    if(!USED[i]){
    if(cost[i] > cost[w] + distance[w][i]){
    (searchNode(t, dictionary[i]))->beforenode = w;
    }
    cost[i] = min2(cost[i], cost[w] + distance[w][i]);
    }
  }
  USED[w] = 1;
  c++;
  }
  return ;
}



int main() {
  for (int i = 0; i < 1009; i++){
    for (int j = 0; j < 1009; j++){
      distance[i][j] = 10000000;
    }
  }
  FILE *fp;
  char start[100];
  char goal[100];

  int place = 0;

  Node* list = NULL;

  if ((list = (struct Tree*)malloc(sizeof(Node))) == NULL) {
        exit(1);
      }

  if((fp = fopen("graph.txt","r")) != NULL){


    fscanf(fp,"%99s",start);
    InsertListMember(list, start, place);
    strcpy (dictionary[0], start);
    place++;
    fscanf(fp,"%99s",goal);
    InsertListMember(list,goal,place);
    strcpy (dictionary[1], goal);
    place++;

    while (feof(fp)==0){
      char tmp1[100];
      char tmp2[100];
      fscanf(fp,"%99s", tmp1);
      if (SearchListMember(list,tmp1) < 0) {
        InsertListMember(list,tmp1,place);
        strcpy (dictionary[place], tmp1);
        place++;
      }
      fscanf(fp,"%99s", tmp2);
      if (SearchListMember(list,tmp2) < 0) {
        InsertListMember(list,tmp2,place);
        strcpy (dictionary[place], tmp2);
        place++;
      }

      int temp;
      fscanf(fp,"%d", &temp);



      distance[SearchListMember(list,tmp1)][SearchListMember(list,tmp2)] = temp;
    }
    fclose(fp);
  }

  int cost[place];//placeは入力のvariationと一致

  dijkstra(place, cost, list);//初めは0、ゴールは1に確定している



  // int answer [1000];
  // int answer_num = 0;

  int N = 1;
  //goalに対応するノード、これは出力できる
  int temp111;
  temp111 = searchNode(list, dictionary[N])->place;
  printf("%s\n",dictionary[temp111]);

  // answer[answer_num] = searchNode(list, dictionary[N])->place;
  // answer_num++;


  while(searchNode(list, dictionary[N])->beforenode != 0){
    int temp0 = searchNode(list, dictionary[N])->beforenode;
    N = temp0;
    printf("%s\n",dictionary[temp0]);
    // answer[answer_num] = searchNode(list, dictionary[N])->beforenode;
    // answer_num++;
  }
  printf("%s\n",dictionary[0]);
  // for (int k = answer_num - 1; k >= 0; k--){
  //   printf("%s\n",dictionary[answer[k]]);
  // }

  return 0;
}
