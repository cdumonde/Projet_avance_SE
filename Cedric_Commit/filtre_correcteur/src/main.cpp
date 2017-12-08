#include "./reader/reader.h"
#include "./writer/writer.h"
#include "./passeHaut/passeHaut.h"
#include "./passeBas/passeBas.h"
#include "./differentiel/differentiel.h"
#include "./Correcteur/correcteur.h"
#include "./comparateur/comparateur.h"
#include "./doubleur/doubleur.h"
#include "./gainPur/gainPur.h"
#include "./detector/detector.h"


#include <iostream>

int main( int argc, char * argv[]){

	const size_t chanNumber = 1;

	cout << "Initialisation des composants..." << endl;
	Reader						FileReader("File");
	PasseHaut<chanNumber>		HighPass("HighPass");
	Comparator					Comp("Comp");
	PasseBas<chanNumber>		LowPass("LowPass");
	Differential				Diff("Diff");
	Controller<chanNumber>		C("C");
	Doubleur					DoubleThreshold("DoubleThreshold");
	Doubleur					DoubleSignal("DoubleSignal");
	GainPur						G("G");
	Detector					ThresholdDetect("ThresholdDetect");
	FileReader.setFileName("data.txt");

	cout << "Creation des signaux d'interconnexion..." << endl;
	sc_fifo<float>	FileFifo("fileFifo", chanNumber);
	sc_fifo<float>	HighPassFifo("highPassFifo", chanNumber);
	sc_fifo<float>	CompFifo("CompFifo", chanNumber);
	sc_fifo<float>	LowPassFifo("LowPassFifo", chanNumber);
	sc_fifo<float>	DiffFifo("DiffFifo", chanNumber);
	sc_fifo<float>	ControllerFifo("ControllerFifo", chanNumber);
	sc_fifo<float>	DoubleurFifo1("DoubleurFifo1", chanNumber);
	sc_fifo<float>	DoubleurFifo2("DoubleurFifo2", chanNumber);
	sc_fifo<float>	GFifo("GFifo", chanNumber);
	sc_fifo<float>	SignalFifo("SignalFifo", chanNumber);
	sc_fifo<float>	ThresholdFifo2("ThresholdFifo2", chanNumber);

	cout << "Mapping des composants..." << endl;
	FileReader.data_out(FileFifo);
	HighPass.data_in(FileFifo);

	HighPass.data_out(HighPassFifo);
	DoubleSignal.data_in(HighPassFifo);

	DoubleSignal.data_out0(DoubleurFifo1);
	Comp.data_in0(DoubleurFifo1);

	Comp.data_out(CompFifo);
	LowPass.data_in(CompFifo);

	LowPass.data_out(LowPassFifo);
	Diff.data_in(LowPassFifo);

	Diff.data_out(DiffFifo);
	C.data_in(DiffFifo);

	C.data_out(ControllerFifo);
	DoubleThreshold.data_in(ControllerFifo);

	DoubleThreshold.data_out0(DoubleurFifo2);
	Comp.data_in1(DoubleurFifo2);

	DoubleThreshold.data_out1(GFifo);
	G.data_in(GFifo);

	DoubleSignal.data_out1(SignalFifo);
	G.data_out(ThresholdFifo2);
	ThresholdDetect.data_in0(ThresholdFifo2);
	ThresholdDetect.data_in1(SignalFifo);

	cout << "Lancement de la simulation du circuit..." << endl;
	sc_start(1000, SC_SEC);
	return 0;
	
}