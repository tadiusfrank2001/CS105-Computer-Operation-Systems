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

#define MAXLINE 1024

int main(int argc, char **argv) {
  
  // parse arguments
  char *host, *port, buffer[MAXLINE];
  if (argc != 3) {
    fprintf(stderr, "usage: %s <host> <port>\n", argv[0]);
    exit(0);
  }
  host = argv[1];
  port = argv[2];
  
  // TODO 1: open socket and connect to server
  
  // message loop
  while(1){
    // TODO 2: send message to server and receive response
  }
  
  
  return 0;
}

