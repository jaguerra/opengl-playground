CC=gcc
CFLAGS=-I.
LDFLAGS = -framework GLUT -framework OpenGL
DEPS=SurfaceGeometry.h trackball.h
OBJ=SurfaceGeometry.o trackball.o glutBasics.o
OUT=test

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

$(OUT): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)

.PHONY: clean

clean:
	rm -f *.o $(OUT)
