/**
 * For this assignment, we write a C script that converts some blob
 * of data into a PPM file.
 * @author: Chuck Rak
 * @author: Chuck Lugai
 */

#include <stdio.h>
#include <stdlib.h>

typedef unsigned char byte;

int convert_to_ppm(char *filename);

int main(int argc, char *argv[]){
  convert_to_ppm(argv[1]);
}


int convert_to_ppm(char *filename){
  // open the image.blob file
  FILE *f = fopen(filename, "r+");

  // read the non-pixel header data
  int x, y;
  char *str[5];
  fscanf(f, "%5s%d%d", &str, &x, &y);

  // allocate space for 3 arrays of values red, green, blue
  int num_px = x * y;
  byte *r = malloc(num_px * sizeof(byte));
  byte *g = malloc(num_px * sizeof(byte));
  byte *b = malloc(num_px * sizeof(byte));

  // store data from the file
  size_t ret_r_code = fread(r, sizeof *r, num_px, f);
  size_t ret_g_code = fread(g, sizeof *g, num_px, f);
  size_t ret_b_code = fread(b, sizeof *b, num_px, f);

  // close opened blob file
  fclose(f);

  // create image.ppm file
  if (ret_r_code == num_px && ret_g_code == num_px && ret_b_code == num_px){
    printf("Arrays read successfully.\n");

    // write PPM header
    FILE *imgp = fopen("image.ppm", "w+");
    char *magic_num = "P6";
    int max_val = 255;
    fprintf(imgp, "%2s %d %d %d\n", magic_num, x, y, max_val);

    for (int i=0; i<num_px; i++){
      fputc(*(r+i), imgp);
      fputc(*(g+i), imgp);
      fputc(*(b+i), imgp);
    }
    // close PPM file
    fclose(imgp);
  } else {
    printf("Could not read file.\n");
    return EXIT_FAILURE;
  }

  // free allocated memory
  free(r);
  free(g);
  free(b);

  return 0;
}
