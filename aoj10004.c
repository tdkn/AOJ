#include <stdio.h>

//define macro
#define swap(type, x, y) do {type t = x; x = y; y = t;} while(0)

// define prototype
void bubble_sort(int a[], int n);

// main program
int main(void)
{
  int i;
  int arr[3];
  int num = sizeof(arr) / sizeof(arr[0]);

  scanf("%d %d %d",&arr[0], &arr[1], &arr[2]);

  bubble_sort(arr, num);

  printf("%d %d %d\n", arr[0], arr[1], arr[2]);

  return 0;
}

// sort program
void bubble_sort(int a[], int n)
{
  int i, j;

  for(i = 0; i < n - 1; i++) {
    for (j = n - 1; j > i; j--) {
      if(a[j -1] > a[j]) {
        swap(int, a[j - 1], a[j]);
      }
    }
  }
}
