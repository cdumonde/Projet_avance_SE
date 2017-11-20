#include "./reader/reader.h"
#include "./writer/writer.h"
#include "./passeHaut/passeHaut.h"
#include "./passeBas/passeBas.h"
#include "./differentiel/differentiel.h"
#include "./Correcteur/correcteur.h"
#include "./comparateur/comparateur.h"

#include <iostream>

int main( int argc, char * argv[]){

	cout << "Initialisation des composants..." << endl;
	Reader			FileReader("File");
	PasseHaut		HighPass("HighPass");
	Comparator		Comp("Comp");
	PasseBas		LowPass("LowPass");
	Differential	Diff("Diff");
	Controller		C("C");
	Writer			Threshold("Threshold");
	FileReader.setFileName("data.txt");
	Threshold.setFileName("filtre.txt");

	cout << "Creation des signaux d'interconnexion..." << endl;
	sc_fifo<float>	FileFifo("fileFifo", 5078);
	sc_fifo<float>	HighPassFifo("highPassFifo", 5078);
	sc_fifo<float>	CompFifo("CompFifo", 5078);
	sc_fifo<float>	LowPassFifo("LowPassFifo", 5078);
	sc_fifo<float>	DiffFifo("DiffFifo", 5078);
	sc_fifo<float>	ControllerFifo("ControllerFifo", 5078);
	sc_fifo<float>	ThresholdFifo("ThresholdFifo", 5078);

	cout << "Mapping des composants..." << endl;
	FileReader.data_out(FileFifo);
	HighPass.data_in(FileFifo);

	HighPass.data_out(HighPassFifo);
	Comp.data_in0(HighPassFifo);

	Comp.data_out(CompFifo);
	LowPass.data_in(CompFifo);

	LowPass.data_out(LowPassFifo);
	Diff.data_in(LowPassFifo);

	Diff.data_out(DiffFifo);
	C.data_in(DiffFifo);

	C.data_out(ControllerFifo);
	Threshold.data_in(ControllerFifo);

	Threshold.data_out(ThresholdFifo);
	Comp.data_in1(ThresholdFifo);

	cout << "Lancement de la simulation du circuit..." << endl;
	sc_start(1000, SC_MS);
	return 0;
	
}