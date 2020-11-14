CC = g++
CFLAGS = -Wextra -O2 -fsanitize=address -o
SRCS = $(shell find . -name "*.cc")
OBJS = $(SRCS:.cc=.o)

TARGET = simulator

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS)  $@ $^

clean:
	rm $(TARGET) $(OBJS)
	rm machine_code.txt
	rm machine_code_comment.txt
