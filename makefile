CC=c++
CFLAGS=-c -Wall -std=c++11 
INCFLAGS=/usr/local/include
LIBFLAGS=-lsfml-graphics -lsfml-window -lsfml-system
LIBPATH=/usr/local/lib
SOURCES=main.cpp
OBJECTS=main.o
EXECUTABLE=main

all: ${SOURCES} ${EXECUTABLE}

main: main.o 
	$(CC) ${OBJECTS} -o ${EXECUTABLE} -L${LIBPATH} ${LIBFLAGS} 

main.o: main.cpp
	$(CC) -c ${SOURCES} -I${INCFLAGS}

clean:
	rm *.o

