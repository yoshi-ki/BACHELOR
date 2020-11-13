a.s : a.c c.h
	gcc -S -Wall a.c

b.s : b.c
	gcc -S -Wall b.c

c.s : c.c
	gcc -S -Wall c.c

a.o : a.s
	gcc -c a.s
b.o : b.s
	gcc -c b.s
c.o : c.s
	gcc -c c.s

kadai-a: a.o b.o c.o
	gcc -o kadai-a a.o b.o c.o


clean:
	rm -rf kadai-a a.s b.s c.s a.o b.o c.o

