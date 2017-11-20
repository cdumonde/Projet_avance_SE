#ifndef GAINPUR_H
#define GAINPUR_H

#include <iostream>
#include "systemc.h"

SC_MODULE(GainPur){
private:
    const float cst = 6.0;
public:
    sc_fifo_in<float> data_in;
    sc_fifo_out<float> data_out;
    
	SC_CTOR(GainPur){
		SC_THREAD(amplify);
	}

	void amplify();
};

#endif