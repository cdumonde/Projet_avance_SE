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

template<int N>
SC_MODULE(Filter){
private:
    PasseHaut<chanNumber>		HighPass;
    Comparator					Comp;
    PasseBas<chanNumber>		LowPass;
    Differential				Diff;
    Controller<chanNumber>		C;
    Doubleur					DoubleThreshold;
    Doubleur					DoubleSignal;
    GainPur						G;
    Comparator					ThresholdDetect;
    /****************/
    sc_fifo<float>	HighPassFifo;
    sc_fifo<float>	CompFifo;
    sc_fifo<float>	LowPassFifo;
    sc_fifo<float>	DiffFifo;
    sc_fifo<float>	ControllerFifo;
    sc_fifo<float>	DoubleurFifo1;
    sc_fifo<float>	DoubleurFifo2;
    sc_fifo<float>	GFifo;
    sc_fifo<float>	SignalFifo;
    sc_fifo<float>	ThresholdFifo2;
public:
    sc_fifo_in<float> data_in;
    sc_fifo_out<float> data_out;
    
	SC_CTOR(Filter) : HighPass("HighPass"), Comp("Comp"), LowPass("LowPass"),
                      Diff("Diff"), C("C"), DoubleThreshold("DoubleThreshold"),
                      DoubleSignal("DoubleSignal"), G("G"), ThresholdDetect("ThresholdDetect"),
                      HighPassFifo("highPassFifo", chanNumber), CompFifo("CompFifo", chanNumber),
                      LowPassFifo("LowPassFifo", chanNumber), ControllerFifo("ControllerFifo", chanNumber),
                      DoubleurFifo1("DoubleurFifo1", chanNumber), DoubleurFifo2("DoubleurFifo2", chanNumber),
                      GFifo("GFifo", chanNumber), SignalFifo("SignalFifo", chanNumber),
                      ThresholdFifo2("ThresholdFifo2", chanNumber)
    {
        HighPass.data_in(data_in);

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

        ThresholdDetect.data_out(data_out);
	}
};