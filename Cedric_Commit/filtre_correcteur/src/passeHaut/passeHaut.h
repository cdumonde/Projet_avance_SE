#ifndef PASSEHAUT_H
#define PASSEHAUT_H

#include "systemc.h"

template<int N>
SC_MODULE( PasseHaut ){
private:
	void filter() {
		float x1[N] = {0.0f};
		float y1[N] = {0.0f};
		int cpt = 0;
		float x0 = 0.0f;
		float y0 = 0.0f;
		while(true) {
			x0 = data_in.read();
			y0 = (x0 - x1[cpt])*63.0f/64.0f + 31.0f/32.0f*y1[cpt];
			data_out.write(y0);
			x1[cpt] = x0;
			y1[cpt] = y0;
			cpt = (cpt + 1) % N;
    	}
	}	
public:
    sc_fifo_in<float> data_in;
    sc_fifo_out<float> data_out;

	sc_in<bool> clk;
	sc_in<bool> reset;

	SC_CTOR(PasseHaut){
		SC_CTHREAD(filter, clk.pos());
		reset_signal_is(reset, true);
	}
};

#endif //PASSEHAUT_H
