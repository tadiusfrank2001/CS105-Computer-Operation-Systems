#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>

/*****************************************
 *
 *  Partner 1: 
 *
 *  Partner 2: 
 * 
 *****************************************/

#define BLOCK_SIZE 256
#define NUM_BLOCKS 2048
#define NUM_INODES 128

int first_inode_block = 3;
int first_data_block = 35;

typedef struct inode_struct{
  char filename[16];
  long filesize;
  int direct_ptrs[8];
  int indirect_ptr;
  int doubly_indirect_ptr;
} inode_t;

typedef struct directory_entry{
  char name[16];
  int inumber;
  char padding[12];
} directory_entry_t;

// constructs the native filename for a data block stored on disk
char * block_filename(int block_num, int include_path){
  int max_filename_len = 32;
  int max_path_len = max_filename_len + 8;
  char * filename = (char *) malloc(max_path_len);
  if(include_path){
    sprintf(filename,"disk/%x.bloc",block_num);
  } else {
    sprintf(filename,"%x.bloc",block_num);
  }

  return filename;
}

// writes a block to disk, given the block number
int write_block(int block_num, char * source){
  char * filename = block_filename(block_num, 1);

  FILE * fp = fopen(filename, "wb");
  if(!fp){
    fprintf(stderr,"fopen() failed to open file %s in write_block\n",filename);
    return 1;
  }

  for(int i = 0; i < BLOCK_SIZE; i++){
    fputc(*(source+i),fp);
  }

  fclose(fp);
  free(filename);
  return 0;
}

// reads a data block into memory, given the block number
int read_block(int block_num, char * dest){
  char * filename = block_filename(block_num, 1);

  FILE * fp = fopen(filename, "rb");
  if(!fp){
    fprintf(stderr,"fopen() failed to open file %s in read_block\n",filename);
    return 1;
  }

  for(int i = 0; i < BLOCK_SIZE; i++){
    int byte = fgetc(fp);
    *(dest+i) = (char) byte;
  }

  fclose(fp);
  free(filename);
  return 0;
}

// initializes a data block of zero bytes
int initialize_block(int block_num){
  char * zeros = (char *) malloc(BLOCK_SIZE);
  memset(zeros, 0, BLOCK_SIZE);

  char * filename = block_filename(block_num, 1);
  write_block(block_num, zeros);
  
  free(filename);
  free(zeros);
  return 0;
}


// writes an inode to disk
int write_inode(int inumber, inode_t inode){
  if(inumber >= NUM_INODES){
    fprintf(stderr,"Can't write inode %d: NUM_INODES=%d\n",inumber,NUM_INODES);
    return -1;
  }
  int inodes_per_block = BLOCK_SIZE/sizeof(inode_t);
  int block_num = 3 + inumber/inodes_per_block;
  int offset = inumber - (inumber/inodes_per_block*inodes_per_block);

  inode_t * block_data = (inode_t *) malloc(BLOCK_SIZE);

  int ret = read_block(block_num, (char *)block_data);
  memcpy(block_data+offset,&inode,sizeof(inode));
  write_block(block_num, (char *)block_data);

  free(block_data);
  return 0;
}

// loads an inode into memory, given an inode number
int read_inode(int inumber, inode_t * dest){
  int inodes_per_block = BLOCK_SIZE/sizeof(inode_t);
  int block_num = 3 + inumber/inodes_per_block;
  int offset = inumber - (inumber/inodes_per_block*inodes_per_block);

  inode_t * block_data = (inode_t *) malloc(BLOCK_SIZE);

  read_block(block_num, (char *)block_data);
  memcpy(dest,block_data+offset,sizeof(inode_t));

  free(block_data);
  return 0;
}

// initializes contents of an inode in memory
void initialize_inode(char * filename, inode_t * inode){
  strncpy(inode->filename,filename,16);
  inode->filesize = 0;
  
  for(int i = 0; i < 8; i++){
    inode->direct_ptrs[i] = 0;
  }
  inode->indirect_ptr = 0;
  inode->doubly_indirect_ptr = 0;
}

// Given a filepath, returns an array of files in that filepath
// Arg 2 (len) should be the length of the string path
// Arg 3 should be a location for storing the number of files in the path
char **parse_path(char *path, size_t len, int *num_dirs){

  // count number of directories in file path (no normalizing) 
  *num_dirs = 0;
  for (int i = 0; i < len; i += 1){
      if (path[i] == '/'){
	  *num_dirs += 1;
      }
  }

  // allocate entries for each word, plus an extra one for NULL termination   
  char ** dirs = (char **) malloc(sizeof(char *) * (*num_dirs+1));

  char *current_dir = path;
  int dir_index = 0;
  for(int i = 0; i <= len; i += 1){
    if (path[i] == '/' || path[i] == '\0'){
      // save the current directory, null terminated                           
      path[i] = '\0';
      dirs[dir_index] = current_dir;

      dir_index += 1;
      current_dir = path + i + 1;
    }
  }

  return dirs;
}


// Given the block number of a data block containing directory entries, 
// searches the first max directory entries for the directory entry for 
// filename. Returns the inum associated with that file if found, else -1
int search_dir_data_block(int data_block_num, char * filename,
			  int max_entries){
  // TODO #1a
  return 0;
}


// Given the block number of an indirect file block, searches the data blocks
// pointed to by that indirect block for an entry matching filename.
// Returns the inum associated with that file if found, else -1
int search_dir_indirect(int indirect_block_num, char * filename, 
			int max_entries){
  // TODO #4a
  return 0;
}

// Given the block number of a doubly-indirect file block, searches the data 
// blocks pointed to by that indirect block for an entry matching filename.
// Returns the inum associated with that file if found, else -1
int search_dir_doubly_indirect(int doubly_indirect_block_num, char * filename, 
			       int max_entries){
  // TODO #4b
  return 0;
}

// Given inumber of a directory, returns the inumber of a file in that dir
// Returns -1 if file not found.
int search_dir(int dir_inum, char * filename){
  // TODO #1b: implement this assuming that no indirect pointers are used

  // TODO #4c: extend this to support the general case
  return 0;
}

// Given an absolute filepath, returns the inode of that file
// Returns -1 if any file in the path is not found
int search_path(char * filepath){
  // Note: implementation currently assumes that the filepath is of the form
  //       /filename.ext (i.e., that the file you are looking for is in the 
  //       root directory

  int num_dirs;
  char ** dirs = parse_path(filepath, strlen(filepath), &num_dirs);

  return search_dir(2, dirs[1]);

  // TODO #3: extend this to support the general case
}

// Given a filepath, ports the file with that filepath from the 105 filesystem
// and stores it in the native OS file system with name new_filename
void port_from_105(char * filepath, char * new_filename){
  // TODO #2: implement this assuming that the filepath is of the form
  //          /filename.ext (i.e., that the file you are looking for is 
  //          in the root directory and that all files/directories are small
  //          enough to fit in one data_block

  // TODO #5: extend this to support the general case

  return;
}


int main(int argc, char ** argv){
  // allocate string on heap to ensure writeability
  char * file_path_105 = (char *) malloc(128);


  // test case for TODO #1: should return 3
  strncpy(file_path_105,"/test.txt", 128);
  int test1 = search_path(file_path_105);
  printf("inumber for /test.txt: %d, expected: 3\n", test1);
  assert(test1 == 3);

  // test case for TODO #2: should result in readable text file
  strncpy(file_path_105,"/test.txt", 128);
  port_from_105(file_path_105,"test1.txt");

  // test case for TODO #3: should return 5
  strncpy(file_path_105,"/example_dir/test2.txt", 128);
  int test2 = search_path(file_path_105);
  printf("inumber for /example_dir/test2.txt: %d, expected: 5\n", test2);
  assert(test2 == 5);

  // test case for TODO #3: should result in readable text file
  strncpy(file_path_105,"/example_dir/test2.txt", 128);
  port_from_105(file_path_105, "test2.txt");

  // test case for TODO #5: should return 6 (should work after task #3)
  strncpy(file_path_105,"/example_dir/image.jpg", 128);
  int test3 = search_path(file_path_105);
  printf("inumber for /example_dir/image.jpg: %d, expected: 6\n", test3);
  assert(test3 == 6);

  // test case for TODO #5: should result in valid jpg file
  strncpy(file_path_105,"/example_dir/image.jpg",128);
  port_from_105(file_path_105,"image.jpg");

  
  free(file_path_105);

  return 0;
}
