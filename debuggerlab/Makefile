#
# Simple Makefile to build the programs
#
# Eleanor Birrell
# Pomona College
# September 8, 2020
#

CC = gcc

all: q1 q2 q3 q4

q1: q1.c
	$(CC) -g -o q1 q1.c

q2: q2.c
	$(CC) -g -o q2 q2.c

q3: q3.c
	$(CC) -g -o q3 q3.c

q4: q3.c
	$(CC) -g -Og -o q4 q3.c

clean:
	rm -rf q1 q2 q3 q4
	rm -rf *~
	rm -rf *.dSYM
