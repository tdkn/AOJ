#include <stdio.h>
//#include <stdlib.h>

int main(void)
{
  int a,b,c;
  int i,N;
  int max;

  scanf("%d",&N);

  for(i=0;i<N;i++) {
    scanf("%d %d %d",&a,&b,&c);

    max = a;
    if(max < b) max = b;
    if(max < c) max = c;

    if(a*a + b*b + c*c - max*max == max*max) printf("YES\n");
    else printf("NO\n");
  }

  return 0;
}
