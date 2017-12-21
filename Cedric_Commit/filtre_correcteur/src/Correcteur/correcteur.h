#ifndef CORRECTEUR_H
#define CORRECTEUR_H

#define GAIN (0.000001f);

#include <iostream>
#include "systemc.h"

template <int N>
SC_MODULE(Controller){
private:
	void control() {
		int cpt = 0;
		float y[N] = {0.0f};
		float x = 0.0f;
		while(true) {
			x = data_in.read();
			y[cpt] += x * GAIN;
			data_out.write(y[cpt]);
			cpt = (cpt + 1) % N;
		}
	}
public:
    sc_fifo_in<float> data_in;
    sc_fifo_out<float> data_out;

	sc_in<bool> clk;
	sc_in<bool> reset;
	
	SC_CTOR(Controller){
		SC_CTHREAD(control, clk.pos());
		reset_signal_is(reset, true);
	}
};

#endif 
