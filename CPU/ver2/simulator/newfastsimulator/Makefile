CC = g++
CFLAGS = -Wextra -O3 -fsanitize=address -mtune=native -march=native -mfpmath=both -o
SRCS = $(shell find . -name "*.cc")
OBJS = $(SRCS:.cc=.o)

TARGET = simulator

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS)  $@ $^

runtest:
	ulimit -c unlimited
	time ./simulator ./test/tojo.s

clean:
	rm $(TARGET) $(OBJS)
	rm machine_code.txt
	rm machine_code_comment.txt
