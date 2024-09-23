CC=gcc
CFLAGS=-c
EXECUTABLE=SITI

all: $(EXECUTABLE)

$(EXECUTABLE): main.o navegador.o
	$(CC) main.o navegador.o -o $(EXECUTABLE)

main.o: main.c navegador.h
	$(CC) $(CFLAGS) main.c

navegador.o: navegador.c navegador.h
	$(CC) $(CFLAGS) navegador.c

clean:
	rm -rf *.o $(EXECUTABLE)
