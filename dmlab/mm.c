/*
 * mm.c, a basic implicit list implementation
 *
 * @collaborator: Chuck Lugai
 * @collaborator: Russel Otieno
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

int mm_check(void);


/*********************************************************
 * NOTE TO STUDENTS: Before you do anything else, please
 * provide your team information in the following struct.
 ********************************************************/
team_t team = {
    /* Team name */
    "eight",
    /* First member's full name */
    "Chuck Lugai",
    /* First member's email address */
    "cjlc2018@mymail.pomona.edu",
    /* Second member's full name (leave blank if none) */
    "Russel Otieno",
    /* Second member's email address (leave blank if none) */
    "rooa2020@mymail.pomona.edu"
};

#define ALIGNMENT 8
#define MIN_PAYLOAD 16
#define ALLOCATED_MASK 1
#define SIZE_MASK (~ALLOCATED_MASK)

#define WORD_SIZE 8
#define CHUNK_SIZE (1 << 12)


char *base;
char *top;
char *search;  // use to implement next_fit


/*
 * Internally, all pointers are of type char*.
 *
 * These functions are helpers for navigating block structure.
 * mostly for type casts to extract values from fields.
 *
 * They are functions rather than macros to get more secure
 * semantics and better readability. They will be inlined by -O2.
 */

// given pointer to payload, return pointer to start of block
char *block_pointer(void *p) {
  return (char*)p - WORD_SIZE;
}

// given pointer to block, return pointer to payload
char *payload_pointer(char *p) {
  return p + WORD_SIZE;
}

// given pointer to block, return pointer to header
size_t *header_pointer(char *p) {
  return (size_t*)(p);
}

// given pointer to block, return pointer to footer
size_t *footer_pointer(char *p, size_t size) {
  return (size_t*)(p + size - WORD_SIZE);
}

// given pointer to block, return pointer to footer of prev block
char *prev_footer_pointer(char *p) {
  return (char*)(p - WORD_SIZE);
}

// given a block pointer, set the header/footer
void mark_block(char *p, size_t size, int allocated) {
  size_t tag = size | allocated;
  *(header_pointer(p)) = tag;
  *(footer_pointer(p, size)) = tag;
}

// given pointer to block, return allocation status
int is_allocated(char *p) {
  return *(header_pointer(p)) & ALLOCATED_MASK;
}

// given pointer to block, return size of block
size_t block_size(char *p) {
  return *(header_pointer(p)) & SIZE_MASK;
}

// given size of block, return size of payload
size_t payload_size(size_t blocksize) {
  return blocksize - 2 * WORD_SIZE;
}

// given size of payload, round up to multiple of alignment
size_t roundup(size_t size) {
  return (size + ALIGNMENT - 1) & (~(ALIGNMENT - 1));
}

// given size of payload, return total size of block
size_t adjusted_size(size_t size) {
  return 2 * WORD_SIZE + ((size < MIN_PAYLOAD) ? MIN_PAYLOAD : roundup(size));
}




// initialize heap
int mm_init(void) {
  // initialize heap with 1 block of size CHUNK_SIZE
  // (plus wiggle room for fixing the alignment
  base = (char*)mem_sbrk(CHUNK_SIZE + WORD_SIZE);
  if (base == (char*)(-1)){
    return -1;
  }

  // define correctly-aligned base and top of heap
  base = (char*)(roundup((size_t)base));
  top = base + CHUNK_SIZE;

  // initialize the one block in heap as size=CHUNCK_SIZE, currently free
  mark_block(base, CHUNK_SIZE, 0);

  // initialize search pointer to free block
  search = base;

  return 0;
}


// find the first block of size >= totalsize
// return top if no suchblock exists
inline char * first_fit(size_t totalsize){

  // search from beginning of heap to top
  char *p = base;
  while (p < top && (is_allocated(p) || block_size(p) < totalsize)){
    p += block_size(p);
  }

  // if no available block, return top
  if(p >= top) p = top;

  return p;
}


// find the next block of size >= totalsize
// return top if no such block exists
inline char * next_fit(size_t totalsize){
  // TODO #2: implement next_fit
  // search from current position of heap to top
  char *p = search;
  while (p < top && (is_allocated(p) || block_size(p) < totalsize)){
    p += block_size(p);
  }

  // if no available block, return top
  if (p >= top) p = top;

  return p;
}


// allocate memory
void *mm_malloc(size_t size) {
  size_t totalsize = adjusted_size(size);
  size_t blocksize;
  size_t excess;
  char *p; // = search;
  //char *anchor = search;

  if (size == 0){
    return NULL;
  }

  // search for a free block that fits this size
  // TODO #2: switch to next_fit
  // p = first_fit(totalsize);
  p = next_fit(totalsize);

  // if no available block, extend heap
  if (p == top) {
    // avoid making lots of small blocks
    if(totalsize < 256){ // value 256 was determined experimentally
      excess = 256;
      blocksize = totalsize + excess;
    } else {
      excess = 0;
      blocksize = totalsize;
    }

    // extend heap by blocksize
    mem_sbrk(blocksize);
    top += blocksize;
  } else { // compute excess space in selected block
    blocksize = block_size(p);
    excess = block_size(p) - totalsize;
  }

  // if excess isn't big enough, don't bother splitting
  if (excess <= 2 * WORD_SIZE + MIN_PAYLOAD) {
    totalsize = blocksize;
    mark_block(p, totalsize, 1);
  } else { // split block
    mark_block(p, totalsize, 1);
    mark_block(p + totalsize, excess, 0);
  }

  return payload_pointer(p);
}


// free memory
void mm_free(void *p) {
  char *bp = block_pointer(p);
  size_t size = block_size(bp);

  // TODO #1: implement coalescing

  // coalesce free blocks
  char *prev_footer = prev_footer_pointer(bp);
  char *next_header = bp + size;
  size_t p_size;

  // verify prev and next blocks exist
  if (prev_footer < base && next_header > top) {
    // assign only current block
    // block is marked as unallocated after conditionals
  } else if (next_header < top && !is_allocated(next_header)) {
    // assign current and next
    size += block_size(next_header);
  } else if (prev_footer > base && !is_allocated(prev_footer)) {
    // assign prev and current block
    p_size = block_size(prev_footer);
    size += p_size;
    bp -= p_size;
  }

  // mark block as unallocated
  mark_block(bp, size, 0);

  search = bp;
}


// ignore --- included for compatibility with test suite
void *mm_realloc(void *p, size_t newsize) {
  // omitted Spring 2020
  return NULL;
}


// helper function that checks the heap
int mm_check(void) {
  int result = 0;
  int prev_is_free = 0;
  size_t blocksize;

  // loop through all the blocks in the heap for common errors
  char *p = base;
  while (p < top) {
    // check for contiguously allocated blocks
    if (prev_is_free && is_allocated(p)) {
      printf("contiguous allocated blocks!\n");
      result = -1;
    }

    // check that the tags match
    blocksize = block_size(p);
    if (*(size_t*)p != *(size_t*)(p + blocksize - WORD_SIZE)) {
      printf("tags differ!\n");
      result = -1;
    }
    p += blocksize;
  }

  // make sure heap ends at a block boundary
  if (p != top) {
    printf("missed the top!\n");
    result = -1;
  }

  return result;
}
