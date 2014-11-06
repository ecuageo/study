# Makefile for stack

CC = gcc
CFLAGS = -Wall -g

current: llstacktest

#
# linked list stacks
#

llstacktest: llstacktest.o llstack.o
	$(CC) $(CFLAGS) -o llstacktest llstacktest.o llstack.o

llstacktest.o: llstacktest.c llstack.h
	$(CC) $(CFLAGS) -c llstacktest.c

llstack.o: llstack.c llstack.h
	$(CC) $(CFLAGS) -c llstack.c

# 
# stacks
#

stacktest: stacktest.o stack.o
	$(CC) $(CFLAGS) -o stacktest stacktest.o stack.o

stacktest.o: stacktest.c stack.h
	$(CC) $(CFLAGS) -c stacktest.c

stack.o: stack.c stack.h
	$(CC) $(CFLAGS) -c stack.c

# 
# queues
#

queuetest: queuetest.o queue.o
	$(CC) $(CFLAGS) -o queuetest queuetest.o queue.o

queuetest.o: queuetest.c queue.h
	$(CC) $(CFLAGS) -c queuetest.c

queue.o: queue.c queue.h
	$(CC) $(CFLAGS) -c queue.c

#
# utils: clean
#

clean:
	rm -f *.o
	rm -f queuetest
	rm -f stacktest

