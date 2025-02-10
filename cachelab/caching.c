/******************************************************************************
 *
 * CS105: Cachelab
 *
 * @author: Chuck Lugai
 * @author: Omosh Otieno
 *
 *****************************************************************************/
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

typedef unsigned char byte;
typedef unsigned int ptr_24;
typedef unsigned char bool;
typedef struct {
  bool valid; // 1 bit valid (actually 8 bits, but we'll pretend)
  byte tag; // 8 bit tag
  byte datablock[256]; // 256 byte data blocks
} cacheline_t;


// store pointers to memory and cache as global variables
byte * memory;
cacheline_t * direct_cache;

// global variables for tracking cache hits and cache misses
int num_hits;
int num_misses;


/******************************************************************************
 * parse_addr takes four arguments. The first argument (addr) is a 32-bit
 * address to parse. The other three arguments are addresses for where to
 * write the parsed tag, index, and offset (respectively).
 *****************************************************************************/
void parse_addr(ptr_24 addr, byte* tag_ptr, byte* index_ptr, byte* offset_ptr){
  /*
   * datablock of size 256 means offset has log2(256) bits
   * 256 cachelines available means index has log2(256) bits
   * the remaining bits form the tag
   */
  // extract the tag, index and offset from the address using bit shifting and masking
  // store them in respective pointer locations
  *offset_ptr = addr & 0xff;
  *index_ptr = (addr >> 8) & 0xff;
  *tag_ptr = (addr >> 16) & 0xff;
}


/******************************************************************************
 * is_in_direct_cache takes three arguments: tag, index, and offset and
 * returns 1 if the associated address is currently stored in the cache or
 * 0 otherwise.
 *****************************************************************************/
bool is_in_direct_cache(byte tag, byte index, byte offset){
  // retrieve cache line at appropriate index from direct_cache array
  // check if cacheline has a valid bit and a tag
  cacheline_t line = direct_cache[index];
  return line.valid && line.tag == tag;
}


/******************************************************************************
 * lookup_int_in_direct_cache takes three arguments: tag, index, and offset
 * and returns the four-byte integer value stored in cache at the corresponding
 * address
 *
 * Precondition: this function should only be called if the address is
 * currently in the cache
 *****************************************************************************/
int lookup_int_in_direct_cache(byte tag, byte index, byte offset){
  // retrieve four-byte int from cache with memcpy
  int value = 0;
  cacheline_t line = direct_cache[index];
  memcpy(&value, &line.datablock[offset], sizeof(int));
  return value;
}


/******************************************************************************
 * update_direct_cache modifies the cache by overwriting the cacheline
 * at index to contain the bytes from memory with tag
 *
 * Precondition: this function should only be called if the address is NOT
 * currently in the cache
 *****************************************************************************/
void update_direct_cache(byte tag, byte index, byte offset, ptr_24 addr){
  /*
   * retrieve pointer to cache line at index from the direct_cache array
   * set valid bit, then update the tag
   * clear the offset with bit masking to align the 256-byte datablock size
   * copy 256 bytes from memory to datablock
   */

  cacheline_t *line = &direct_cache[index];
  line->valid = 1;
  line->tag = tag;
  ptr_24 align_addr = addr & ~0xff;
  memcpy(line->datablock, &memory[align_addr], 256);
}

/******************************************************************************
 *  access_direct is a wrapper function for accessing memory
 *  first checks whether a value is in cache. If so, reads from cache. If not,
 *  reads from memory and updates the cache
 *****************************************************************************/
int access_direct(ptr_24 addr){
  // breakdown address into tag, index, offset
  byte tag;
  byte index;
  byte offset;
  parse_addr(addr, &tag, &index, &offset);

  // first check cache
  if(is_in_direct_cache(tag, index, offset)){
    // cache hit
    num_hits++;

    // return cached value
    int val_cached = lookup_int_in_direct_cache(tag, index, offset);
    return val_cached;

  } else {
    // cache miss
    num_misses++;

    // lookup value from memory
    int val = *((int *) (memory+addr));

    // update cache
    update_direct_cache(tag,index, offset, addr);

    // return value
    return val;
  }

}


/******************************************************************************
 * vector_multiplication multiplies two one-dimensional arrays
 * used by main function to evaluating caching
 *****************************************************************************/
long vector_multiplication(ptr_24 a, ptr_24 b, int len){
  long result = 0;
  for(int i = 0; i < len; i++){
    int x = access_direct(a + 4*i);
    int y = access_direct(b + 4*i);
    result += x*y;
  }
  return result;
}


/******************************************************************************
 * main function initialized memory and cache and then evaluates the cache
 *****************************************************************************/
int main(int argc, char** argv){
  // allocate and initialize "main memory"
  int mem_size = 0x1000000; // 16 MB
  memory = malloc(mem_size*sizeof(byte));
  for(int i = 0; i < mem_size/sizeof(int); i++){
    *(((int *) memory) + i) = i;
  }

  //allocate direct-mapped "cache"
  int num_cachelines = 256;
  direct_cache = malloc(num_cachelines * sizeof(cacheline_t));

  // evaluate cache performance
  // Hint: change max len from 65536 to 4 or 8 for debugging
  for(int len = 2; len < 65536; len*=2){

    // re-initialize cache by setting all lines to invalid
    for(int i = 0; i < num_cachelines; i++){
      (direct_cache + i)->valid = 0; // all cachelines are initially invalid
    }

    // reset counters
    num_hits = 0;
    num_misses = 0;

    ptr_24 a = 0;
    ptr_24 b = a+len*sizeof(int);
    long ans = vector_multiplication(a,b,len);
    printf("Len: %d, Answer: %ld, Cache hits: %f, Cache misses: %f\n",len,ans,
	   (double)num_hits/(num_hits+num_misses),
	   (double)num_misses/(num_hits+num_misses));

  }

  // cleanup
  free(memory);
  free(direct_cache);

  return 0;
}
