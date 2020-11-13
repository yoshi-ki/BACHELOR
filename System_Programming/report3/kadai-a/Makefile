CC = gcc
CFLAGS = -Wall
unsafe_btree : main.o btree.o 
	gcc -Wall -pthread -o unsafe_btree btree.o main.o
clean : 
	rm -rf *.o unsafe_btree 
