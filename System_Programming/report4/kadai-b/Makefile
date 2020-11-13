CC = gcc
CFLAGS = -Wall

all: tcpechoclient tcpechoserver1 tcpechoserver2
tcpechoclient : tcpechoclient.o
	gcc -Wall -o tcpechoclient tcpechoclient.o
tcpechoserver1 : tcpechoserver1.o
	gcc -Wall -pthread -o tcpechoserver1 tcpechoserver1.o
tcpechoserver2 : tcpechoserver2.o
	gcc -Wall -pthread -o tcpechoserver2 tcpechoserver2.o
clean : 
	rm -rf *.o tcpechoclient tcpechoserver1 tcpechoserver2

