#include <stdio.h>
#include <unistd.h>

int main(int argc, char *argv[]) {

  int status = 0;

  if (argc == 2) {
    sscanf(argv[1], "%d", &status);
  }

  printf("Taking a nap... ");
  fflush(stdout);
  sleep(1);

  printf("\nzzzz... ");
  fflush(stdout);
  sleep(8);

  printf("zzzz... ");
  fflush(stdout);
  sleep(1);

  printf("\n...yawn! What a nice nap.\n");

  return status;
}
