#include <stdio.h>

int main(void)
{
  unsigned int a,b;
  int cnt = 0;
  int temp;

  //cnt = 0;

  while(scanf("%d %d",&a,&b) != EOF) {
    temp = (a+b)/10;
    cnt++;

    while(temp > 0) {
      temp = temp/10;
      cnt++;
    }

    printf("%d\n",cnt);

    cnt = 0;
  }
  return 0;
}
