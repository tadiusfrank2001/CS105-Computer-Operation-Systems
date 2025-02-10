#include <stdio.h>
#include <stdlib.h>

int hmc_pomona_fix(int x) {
  if (x == 42) {
    return 47;
  } else if (x == 47) {
    return 42; 
  } else {
    return x;
  }
}

void fix_array(int *a, int a_size) {
    int i;

    for (i = 0;  i < a_size;  i++, a++) {
	*a = hmc_pomona_fix(*a);
    }
}

int main(int argc, char *argv[]) {
    int *array;
    int i;

    array = (int *)malloc(argc * sizeof(int));

    /* argv[0] is the program name so we skip it */
    for (i = 1;  i < argc;  i++) {
	array[i] = atoi(argv[i]);
    }
    fix_array(array, argc - 1);
    for (i = 1;  i < argc;  i++) {
	printf ("%d ", array[i]);
    }
    printf ("\n");
    return 0;
}
