CC=g++ -O2 -Wall -I /usr/local/systemc-2.3.2/include
CFLAGS=
LDFLAGS=-L/usr/local/systemc-2.3.2/lib-linux64 -lsystemc -lpthread -static
EXEC=main
SRC=./src/main.cpp 					\
./src/gene/gene.cpp      \
./src/analyseur/analyseur.cpp 	\
./src/modules/filtre1.cpp		\
./src/modules/carre.cpp			\
./src/modules/racine.cpp		\
./src/modules/comparateur.cpp  \
./src/modules/doubleur.cpp \
./src/modules/sc_store.cpp


OBJ=$(SRC:.cpp=.o)

CFLAGS=

all: $(EXEC)
	./bin/main

main: $(OBJ)
	$(CC) $(CFLAGS) -o ./bin/$@ $^ $(LDFLAGS)

%.o: %.cpp
	$(CC) $(CFLAGS) -o $@ -c $< $(CFLAGS)

.PHONY: clean mrproper

clean:
	find . -name "*.o" -delete

mrproper: clean
	rm $(EXEC)
