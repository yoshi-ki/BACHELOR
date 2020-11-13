CC = gcc
CFLAGS = -Wall

all: iperfc iperfs
iperfc : iperfc.o
	gcc -Wall -O2 -o iperfc iperfc.o
iperfs : iperfs.o
	gcc -Wall -O2 -o iperfs iperfs.o

clean :
	rm -rf *.o iperfc iperfs
