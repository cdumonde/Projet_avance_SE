#ifndef DETECTOR_H
#define DETECTOR_H

#include <iostream>
#include "systemc.h"

SC_MODULE(Detector){
public:
    sc_fifo_in<float> data_in0;
    sc_fifo_in<float> data_in1;
    
	sc_in<bool> clk;
	sc_in<bool> reset;

	SC_CTOR(Detector){
		SC_CTHREAD(detect, clk.pos());
		reset_signal_is(reset, true);
	}

	void detect();
};

#endif
