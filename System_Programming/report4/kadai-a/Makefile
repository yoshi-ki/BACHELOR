CC = gcc
CFLAGS = -Wall

all: udpechoclient udpechoserver
udpechoclient : udpechoclient.o
	gcc -Wall -o udpechoclient udpechoclient.o
udpechoserver : udpechoserver.o
	gcc -Wall -o udpechoserver udpechoserver.o
clean : 
	rm -rf *.o udpechoclient udpechoserver

