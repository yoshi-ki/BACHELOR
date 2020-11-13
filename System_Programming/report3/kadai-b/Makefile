CC = gcc
CFLAGS = -Wall
safe_btree : main.o btree.o 
	gcc -Wall -pthread -o safe_btree btree.o main.o
clean : 
	rm -rf *.o safe_btree 
