CC=g++
CFLAGS=-O2 -Wall -I/usr/local/systemC/include
LDFLAGS=-L/usr/local/systemC/lib-linux64 -lsystemc -lpthread -static
EXEC=main
SRC=./src/main.cpp 						\
	./src/reader/reader.cpp				\
	./src/writer/writer.cpp				\
	./src/passeHaut/passeHaut.cpp		\
	./src/passeBas/passeBas.cpp			\
	./src/gainPur/gainPur.cpp			\
	./src/differentiel/differentiel.cpp	\
	./src/Correcteur/Correcteur.cpp		\
	./src/comparateur/comparateur.cpp	

OBJ=$(SRC:.cpp=.o)

all: $(EXEC)
	./bin/main

main: $(OBJ)
	$(CC) -o ./bin/$@ $^ $(LDFLAGS)

%.o: %.cpp
	$(CC) $(CFLAGS) -o $@ -c $<

.PHONY: clean mrproper

clean:
	find . -name "*.o" -delete

mrproper: clean
	rm $(EXEC)
