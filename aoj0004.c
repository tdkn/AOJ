#include <stdio.h>

int main(void)
{
  float a,b,c,d,e,f;
  float x,y;

  while(scanf("%f %f %f %f %f %f\n", &a, &b, &c, &d, &e, &f) != EOF)
  {
    y = (c * d - f * a) / (b * d - e * a);
    x = (c - b * y) / a;
    printf("%.3f %.3f\n", x, y);
  }
  return 0;
}
