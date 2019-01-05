CC=gcc
CFLAGS=-I. $(shell pkg-config --cflags glfw3)
LDFLAGS=$(shell pkg-config --static --libs glfw3)
DEPS=
OBJ=glfw-test.o glad.o
OUT=test

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

$(OUT): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)

.PHONY: clean

clean:
	rm -f *.o $(OUT)
