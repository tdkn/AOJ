#include <stdio.h>

void sort(int* array, int n);

int main(void) {
  int array[10];
  int i;

  for(i=0; i<10; i++) {
    scanf("%d",&array[i]);
  }

  sort(array,10);

  for(i=0; i<3; i++)
    printf("%d\n",array[i]);

  return 0;
}

void sort(int* array, int n) {
  int i,j,temp;

  for(i=0; i<n-1; i++)
    for(j=i+1; j<n; j++)
      if(array[i] < array[j]) {
        temp = array[i];
        array[i] = array[j];
        array[j] = temp;
      }
}
