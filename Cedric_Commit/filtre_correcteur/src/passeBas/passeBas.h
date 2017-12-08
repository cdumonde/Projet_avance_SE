#ifndef PASSEBAS_H
#define PASSEBAS_H

#include <iostream>
#include "systemc.h"

template<int N>
SC_MODULE( PasseBas ){
private:
	const size_t mod = N;
	float x1[N] = {0.0f};
    float y1[N] = {0.0f};
	int cpt = 0;
	void filter() {
		float x0 = 0.0f;
		float y0 = 0.0f;
		while(true) {
			x0 = data_in.read();
			y0 = (x0 + x1[cpt])/4096.0f + 2047.0f/2048.0f*y1[cpt];
			data_out.write(y0);
			x1[cpt] = x0;
			y1[cpt] = y0;
			cpt = (cpt + 1) % mod;
		}
	}
public:
    sc_fifo_in<float> data_in;
    sc_fifo_out<float> data_out;
    
	SC_CTOR(PasseBas){
		SC_THREAD(filter);
	}
};

#endif //PASSEHAUT_H