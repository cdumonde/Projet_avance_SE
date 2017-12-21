#ifndef GAINPUR_H
#define GAINPUR_H

#define CONST_GP (-10.0f);

#include <iostream>
#include "systemc.h"

SC_MODULE(GainPur){
public:
    sc_fifo_in<float> data_in;
    sc_fifo_out<float> data_out;
	
	sc_in<bool> clk;
	sc_in<bool> reset;

	SC_CTOR(GainPur){
		SC_CTHREAD(amplify, clk.pos());
		reset_signal_is(reset, true);
	}

	void amplify();
};

#endif
