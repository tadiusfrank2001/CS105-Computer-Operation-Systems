#
# A messaging server in Python
#
# Name 1:
#
# Name 2:
#
#

import sys
import socket
from os import _exit as quit

def main():
    # parse arguments
    if len(sys.argv) != 2:
        print("usage: python3 %s <port>" % sys.argv[0])
        quit(1)
    port = sys.argv[1]
    
    # TODO 1: open a socket, bind, and listen

    # TODO 2: accept connections from client

    # message loop
    while(True):
        # TODO 3: receive a message from client and send response
        pass


if __name__ == "__main__":
    main()
