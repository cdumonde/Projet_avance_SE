CC=g++ -O2 -Wall -I/user/local/systemc-2.3.2/include
CFLAGS=
LDFLAGS=-L/user/local/systemc-2.3.2/lib-macosx64 -lsystemc -lpthread
EXEC=main
SRC=./src/main.cpp 						\
	./src/modules/Conversion.cpp 		\
	./src/modules/i_wrapper.cpp 		\
	./src/modules/o_wrapper.cpp 		\
	./src/modules/ConversionInverse.cpp \
	./src/Image/CPixel.cpp     			\
	./src/Image/CLigne.cpp     			\
	./src/Image/CImage.cpp     			\
	./src/Image/CBitmap.cpp    			\
	./src/gene/ImageIn.cpp     			\
	./src/analyseur/ImageOut.cpp		

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
