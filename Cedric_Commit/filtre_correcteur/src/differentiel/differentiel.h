#ifndef DIFFERENTIEL_H
#define DIFFERENTIEL_H

#define CONST_DIFF (0.159f)

#include <iostream>
#include "systemc.h"

SC_MODULE(Differential){
public:
    sc_fifo_in<float> data_in;
    sc_fifo_out<float> data_out;
    
	sc_in<bool> clk;
	sc_in<bool> reset;
	
	SC_CTOR(Differential){
		SC_CTHREAD(substract, clk.pos());
		reset_signal_is(reset, true);
	}

	void substract();
};

#endif
