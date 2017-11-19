#include "./reader/reader.h"
#include "./writer/writer.h"

#include <iostream>

int main( int argc, char * argv[]){

	cout << "Initialisation des composants..." << endl;
	Reader	FileReader("File");
	Writer	PreFiltre("PreFiltre");
	FileReader.setFileName("data.txt");
	PreFiltre.setFileName("filtre.txt");

	cout << "Creation des signaux d'interconnexion..." << endl;
	sc_fifo<float>	file_fifo("fileFifo", 5078);
	sc_fifo<float>	preFilter_fifo("preFilterFifo", 5078);

	cout << "Mapping des composants..." << endl;
	FileReader.data_out(file_fifo);
	PreFiltre.data_in(file_fifo);

	PreFiltre.data_out(preFilter_fifo);

	cout << "Lancement de la simulation du circuit..." << endl;
	sc_start(1000, SC_MS);
	return 0;
	
}