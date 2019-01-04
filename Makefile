CC=gcc
CFLAGS=-I.
LDFLAGS = -framework GLUT -framework OpenGL


test: glutBasics.c SurfaceGeometry.c trackball.c
	$(CC) -o test $^ $(LDFLAGS)
