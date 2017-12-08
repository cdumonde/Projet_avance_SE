#ifndef CORRECTEUR_H
#define CORRECTEUR_H

#include <iostream>
#include "systemc.h"

template <int N>
SC_MODULE(Controller){
private:
    const float gain = 0.000001f;
	const size_t mod = N;
	float y[N] = {0.0f};
	int cpt = 0;
	void control() {
		float x = 0.0f;
		while(true) {
			x = data_in.read();
			y[cpt] += x * gain;
			data_out.write(y[cpt]);
			cpt = (cpt + 1) % mod;
		}
	}
public:
    sc_fifo_in<float> data_in;
    sc_fifo_out<float> data_out;
    
	SC_CTOR(Controller){
		SC_THREAD(control);
	}
};

#endif 