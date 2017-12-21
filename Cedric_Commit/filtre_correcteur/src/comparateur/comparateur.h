#ifndef COMPARATEUR_H
#define COMPARATEUR_H

#include <iostream>
#include "systemc.h"

SC_MODULE(Comparator){
public:
    sc_fifo_in<float> data_in0;
    sc_fifo_in<float> data_in1;
    sc_fifo_out<float> data_out;

	sc_in<bool> clk;
	sc_in<bool> reset;
    
	SC_CTOR(Comparator){
		SC_CTHREAD(compare, clk.pos());
		reset_signal_is(reset, true);
	}

	void compare();
};
#endif
