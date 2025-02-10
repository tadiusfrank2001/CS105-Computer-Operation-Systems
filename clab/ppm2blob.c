#include <stdlib.h>
#include <stdio.h>

// A quick alias to make the code more readable
typedef unsigned char byte;

int main()
{
    // ----------------------------------------------------------------
    //  ____                _   ____  ____  __  __
    // |  _ \ ___  __ _  __| | |  _ \|  _ \|  \/  |
    // | |_) / _ \/ _` |/ _` | | |_) | |_) | |\/| |
    // |  _ <  __/ (_| | (_| | |  __/|  __/| |  | |
    // |_| \_\___|\__,_|\__,_| |_|   |_|   |_|  |_|
    // ----------------------------------------------------------------

    // I am hardcoding the file names instead of accepting program
    // argument for ease of use
    const char *ppm_filename = "image.ppm";

    // Attempt to open file and check if opened
    FILE *ppm_ptr = fopen(ppm_filename, "rb");
    if (!ppm_ptr)
    {
        perror("Could not open input file.\n");
        return EXIT_FAILURE;
    }

    // PPM file format: http://netpbm.sourceforge.net/doc/ppm.html
    char magic[3]; // Two byte magic number "P6" and a null-terminator
    int image_width;
    int image_height;
    int max_color_value;

    //  The format string will automatically skip whitespace where indicated
    int status = fscanf(ppm_ptr, "%2s %d %d %d ", magic, &image_width, &image_height, &max_color_value);
    if (status == EOF)
    {
        printf("Could not read PPM file header.\n");
        return EXIT_FAILURE;
    }

    // Display ppm file information
    printf("PPM Magic: %s (%d by %d)\n", magic, image_width, image_height);

    // The number of bytes needed per pixel depends on the maximum
    // color value, and I don't want to deal with two-byte samples...
    if (max_color_value > 255)
    {
        printf("This program does not handle two-byte pixels.\n");
        return EXIT_FAILURE;
    }

    // Image data; (r, g, b) for reach pixel
    int num_pixels = image_width * image_height;
    byte *reds = malloc(num_pixels * sizeof(byte));
    byte *greens = malloc(num_pixels * sizeof(byte));
    byte *blues = malloc(num_pixels * sizeof(byte));

    // Only checking the blues pointer because I am lazy (Don't use C...)
    if (!blues)
    {
        printf("Could not allocate memory.\n");
        return EXIT_FAILURE;
    }

    for (size_t i = 0; i < num_pixels; i++)
    {
        // Error handling for fgetc is a bit annoying for this particular
        // problem. So I am going to ignore it so that the code is
        // still readable (don't use C...)
        reds[i] = fgetc(ppm_ptr);
        greens[i] = fgetc(ppm_ptr);
        blues[i] = fgetc(ppm_ptr);
    }

    // Close the file now that we are done reading
    fclose(ppm_ptr);

    // ----------------------------------------------------------------
    // __        __    _ _         ____  _       _
    // \ \      / / __(_) |_ ___  | __ )| | ___ | |__
    //  \ \ /\ / / '__| | __/ _ \ |  _ \| |/ _ \| '_ \
    //   \ V  V /| |  | | ||  __/ | |_) | | (_) | |_) |
    //    \_/\_/ |_|  |_|\__\___| |____/|_|\___/|_.__/
    // ----------------------------------------------------------------

    // Write the data back in the CS105 blob format:
    const char *blob_filename = "image.blob";
    FILE *blob_ptr = fopen(blob_filename, "wb");
    if (!blob_ptr)
    {
        perror("Could not open output file.\n");
        return EXIT_FAILURE;
    }

    // Write the CS105 blob header using "formatted output"
    status = fprintf(blob_ptr, "CS105 %d %d ", image_width, image_height);
    if (status < 0)
    {
        printf("Could not write to file.\n");
        return EXIT_FAILURE;
    }

    // Write the pixel data using direct writes of binary data
    fwrite(reds, sizeof(byte), num_pixels, blob_ptr);
    fwrite(greens, sizeof(byte), num_pixels, blob_ptr);
    int bytes_written = fwrite(blues, sizeof(byte), num_pixels, blob_ptr);

    // Checking the number of bytes written in the final call to fwrite
    // only (because I'm lazy... don't use C).
    if (bytes_written != num_pixels * sizeof(byte))
    {
        printf("Could not write to file.\n");
        return EXIT_FAILURE;
    }

    // Close the file now that we are done writing
    fclose(blob_ptr);

    // ----------------------------------------------------------------
    //   ____ _
    //  / ___| | ___  __ _ _ __  _   _ _ __
    // | |   | |/ _ \/ _` | '_ \| | | | '_ \
    // | |___| |  __/ (_| | | | | |_| | |_) |
    //  \____|_|\___|\__,_|_| |_|\__,_| .__/
    //                                |_|
    // ----------------------------------------------------------------

    // Deallocate memory
    free(blues);
    free(greens);
    free(reds);

    printf("Blob image file written.\n");

    // NOTE: the OS will automatically close files and deallocate memory
    // when this program exits, but it is good to get into a habit of
    // closing and freeing memory.
}
