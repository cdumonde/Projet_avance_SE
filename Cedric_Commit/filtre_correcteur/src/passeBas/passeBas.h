#ifndef PASSEBAS_H
#define PASSEBAS_H

#include <iostream>
#include "systemc.h"

SC_MODULE( PasseBas ){
private:
	const float a0 = 0.9709023;
	const float a1 = 0.9709023;
	const float b0 = 0.9418046;

public:
    sc_fifo_in<float> data_in;
    sc_fifo_out<float> data_out;
    
	SC_CTOR(PasseBas){
		SC_THREAD(filter);
	}

	void filter();
};

#endif //PASSEHAUT_H