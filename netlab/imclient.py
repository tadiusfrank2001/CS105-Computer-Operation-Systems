#
# A messaging client in Python
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
    if len(sys.argv) != 3:
        print("usage: python3 %s <host> <port>" % sys.argv[0]);
        quit(1)
    host = sys.argv[1]
    port = sys.argv[2]

    # TODO 1: open a socket and connect to server


    # message loop
    while(True):
        # TODO 2: send message and receive response
        pass


if __name__ == "__main__":
    main()
