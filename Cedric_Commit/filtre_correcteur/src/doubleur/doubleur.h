#ifndef DOUBLEUR_H
#define DOUBLEUR_H

#include <iostream>
#include "systemc.h"

SC_MODULE(Doubleur){
public:
    sc_fifo_in<float> data_in;
    sc_fifo_out<float> data_out0;
    sc_fifo_out<float> data_out1;
    
	sc_in<bool> clk;
	sc_in<bool> reset;

	SC_CTOR(Doubleur){
		SC_CTHREAD(cpy, clk.pos());
		reset_signal_is(reset, true);
	}

	void cpy();
};

#endif 