#include "./passeHaut/passeHaut.h"
#include "./passeBas/passeBas.h"
#include "./differentiel/differentiel.h"
#include "./Correcteur/correcteur.h"
#include "./comparateur/comparateur.h"
#include "./doubleur/doubleur.h"
#include "./gainPur/gainPur.h"
#include "./detector/detector.h"

#define CHANNUMBER (1)

SC_MODULE(Filter){
private:
    PasseHaut<CHANNUMBER>		HighPass;
    Comparator					Comp;
    PasseBas<CHANNUMBER>		LowPass;
    Differential				Diff;
    Controller<CHANNUMBER>		C;
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

    sc_in<bool> clk;
    sc_in<bool> reset;
    
	SC_CTOR(Filter) : HighPass("HighPass"), Comp("Comp"), LowPass("LowPass"),
                      Diff("Diff"), C("C"), DoubleThreshold("DoubleThreshold"),
                      DoubleSignal("DoubleSignal"), G("G"), ThresholdDetect("ThresholdDetect"),
                      HighPassFifo("highPassFifo", CHANNUMBER), CompFifo("CompFifo", CHANNUMBER),
                      LowPassFifo("LowPassFifo", CHANNUMBER), ControllerFifo("ControllerFifo", CHANNUMBER),
                      DoubleurFifo1("DoubleurFifo1", CHANNUMBER), DoubleurFifo2("DoubleurFifo2", CHANNUMBER),
                      GFifo("GFifo", CHANNUMBER), SignalFifo("SignalFifo", CHANNUMBER),
                      ThresholdFifo2("ThresholdFifo2", CHANNUMBER)
    {
        HighPass.data_in(data_in);
        HighPass.clk(clk);
        HighPass.reset(reset);

        HighPass.data_out(HighPassFifo);
        DoubleSignal.data_in(HighPassFifo);
        DoubleSignal.clk(clk);
        DoubleSignal.reset(reset);

        DoubleSignal.data_out0(DoubleurFifo1);
        Comp.data_in0(DoubleurFifo1);
        Comp.clk(clk);
        Comp.reset(reset);

        Comp.data_out(CompFifo);
        LowPass.data_in(CompFifo);
        LowPass.clk(clk);
        LowPass.reset(reset);

        LowPass.data_out(LowPassFifo);
        Diff.data_in(LowPassFifo);
        Diff.clk(clk);
        Diff.reset(reset);

        Diff.data_out(DiffFifo);
        C.data_in(DiffFifo);
        C.clk(clk);
        C.reset(reset);

        C.data_out(ControllerFifo);
        DoubleThreshold.data_in(ControllerFifo);
        DoubleThreshold.clk(clk);
        DoubleThreshold.reset(reset);

        DoubleThreshold.data_out0(DoubleurFifo2);
        Comp.data_in1(DoubleurFifo2);
        Comp.clk(clk);
        Comp.reset(reset);

        DoubleThreshold.data_out1(GFifo);
        G.data_in(GFifo);
        G.clk(clk);
        G.reset(reset);

        DoubleSignal.data_out1(SignalFifo);
        G.data_out(ThresholdFifo2);
        ThresholdDetect.data_in0(ThresholdFifo2);
        ThresholdDetect.data_in1(SignalFifo);
        ThresholdDetect.clk(clk);
        ThresholdDetect.reset(reset);

        ThresholdDetect.data_out(data_out);
	}
};
