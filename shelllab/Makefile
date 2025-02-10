.PHONY: all clean

all: ish snooze

ish: ish.c
	gcc --std=gnu99 -g -o ish ish.c

snooze: snooze.c
	gcc --std=gnu99 -o snooze snooze.c

clean:
	-rm -f ish
