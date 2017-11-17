CC=g++ -O2 -Wall -I/user/local/systemc-2.3.2/include
CFLAGS=
LDFLAGS=-L/user/local/systemc-2.3.2/lib-macosx64 -lsystemc -lpthread
EXEC=main
SRC=./src/main.cpp 					\
	./src/modules/filtre1.cpp		\
	./src/modules/carre.cpp			\
	./src/modules/racine.cpp		\
	./src/modules/sc_store.cpp		\
	./src/analyseur/analyseur.cpp 	\
	./src/gene/gene.cpp 		


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
