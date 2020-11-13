#include <stdio.h>

struct wizard {
    int hp;
    int mp;
};

void healing(struct wizard *x){
    if(x->mp >= 10) {
      x->hp += 100;
      x->mp -= 10;
    }
}

int main(void)
{
    struct wizard x;
    scanf("%d %d", &x.hp, &x.mp);

    healing(&x);

    printf("%d %d\n", x.hp, x.mp);

    return 0;
}
