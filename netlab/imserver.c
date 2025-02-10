/* 
 * A messaging server in C 
 *
 * Name 1:
 *
 * Name 2:
 *
 */ 

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <arpa/inet.h>
#include <unistd.h>



int main(int argc, char **argv) {
  // parse arguments
  if (argc != 2) {
    fprintf(stderr, "usage: %s <port>\n", argv[0]);
    return 0;
  }
  unsigned port = atoi(argv[1]);
  
  // TODO 1: open socket, bind, and listen for incoming connections
  
  
  // TODO 2: accept incoming connection
  
  
  // message loop
  while(1){
    // TODO 3: receive message and send response
  }
  
  
  return 0;
}
