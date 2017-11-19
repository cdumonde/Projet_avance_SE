#include "./reader/reader.h"
#include "./writer/writer.h"
#include "./passeHaut/passeHaut.h"

#include <iostream>

int main( int argc, char * argv[]){

	cout << "Initialisation des composants..." << endl;
	Reader		FileReader("File");
	PasseHaut	HighPass("HighPass");
	Writer		HighPassOutput("HighPassOutput");
	FileReader.setFileName("data.txt");
	HighPassOutput.setFileName("filtre.txt");

	cout << "Creation des signaux d'interconnexion..." << endl;
	sc_fifo<float>	file_fifo("fileFifo", 5078);
	sc_fifo<float>	highPass_fifo("highPassFifo", 5078);
	sc_fifo<float>	highPassOutput_fifo("highPassOutputFifo", 5078);

	cout << "Mapping des composants..." << endl;
	FileReader.data_out(file_fifo);
	HighPass.data_in(file_fifo);

	HighPass.data_out(highPass_fifo);
	HighPassOutput.data_in(highPass_fifo);

	HighPassOutput.data_out(highPassOutput_fifo);

	cout << "Lancement de la simulation du circuit..." << endl;
	sc_start(1000, SC_MS);
	return 0;
	
}