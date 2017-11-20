#include "./reader/reader.h"
#include "./writer/writer.h"
#include "./passeHaut/passeHaut.h"
#include "./passeBas/passeBas.h"
#include "./differentiel/differentiel.h"
#include "./Correcteur/correcteur.h"
#include "./comparateur/comparateur.h"
#include "./doubleur/doubleur.h"
#include "./gainPur/gainPur.h"


#include <iostream>

int main( int argc, char * argv[]){

	const size_t fifoSize = 5078;

	cout << "Initialisation des composants..." << endl;
	Reader			FileReader("File");
	PasseHaut		HighPass("HighPass");
	Comparator		Comp("Comp");
	PasseBas		LowPass("LowPass");
	Differential	Diff("Diff");
	Controller		C("C");
	Doubleur		DoubleThreshold("DoubleThreshold");
	Doubleur		DoubleSignal("DoubleSignal");
	GainPur			G("G");
	Comparator		ThresholdDetect("ThresholdDetect");
	Writer			Threshold("Threshold");
	Writer			ThresholdDetection("ThresholdDetection");
	FileReader.setFileName("data.txt");
	Threshold.setFileName("filtre.txt");
	ThresholdDetection.setFileName("detection.txt");

	cout << "Creation des signaux d'interconnexion..." << endl;
	sc_fifo<float>	FileFifo("fileFifo", fifoSize);
	sc_fifo<float>	HighPassFifo("highPassFifo", fifoSize);
	sc_fifo<float>	CompFifo("CompFifo", fifoSize);
	sc_fifo<float>	DoubleFifo("DoubleFifo", fifoSize);
	sc_fifo<float>	LowPassFifo("LowPassFifo", fifoSize);
	sc_fifo<float>	DiffFifo("DiffFifo", fifoSize);
	sc_fifo<float>	ControllerFifo("ControllerFifo", fifoSize);
	sc_fifo<float>	ThresholdFifo("ThresholdFifo", fifoSize);
	sc_fifo<float>	DoubleurFifo1("DoubleurFifo1", fifoSize);
	sc_fifo<float>	DoubleurFifo2("DoubleurFifo2", fifoSize);
	sc_fifo<float>	GFifo("GFifo", fifoSize);
	sc_fifo<float>	SignalFifo("SignalFifo", fifoSize);
	sc_fifo<float>	ThresholdFifo2("ThresholdFifo2", fifoSize);
	sc_fifo<float>	DetectionFifo("DetectionFifo", fifoSize);
	sc_fifo<float>	TmpFifo("TmpFifo", fifoSize);

	cout << "Mapping des composants..." << endl;
	FileReader.data_out(FileFifo);
	HighPass.data_in(FileFifo);

	HighPass.data_out(HighPassFifo);
	Threshold.data_in(HighPassFifo);

	Threshold.data_out(ThresholdFifo);
	DoubleSignal.data_in(ThresholdFifo);

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
	ThresholdDetect.data_in0(SignalFifo);
	ThresholdDetect.data_in1(ThresholdFifo2);

	ThresholdDetect.data_out(DetectionFifo);
	ThresholdDetection.data_in(DetectionFifo);

	ThresholdDetection.data_out(TmpFifo);

	cout << "Lancement de la simulation du circuit..." << endl;
	sc_start(1000, SC_MS);
	return 0;
	
}