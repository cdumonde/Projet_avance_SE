#ifndef PASSEHAUT_H
#define PASSEHAUT_H

#include <iostream>
#include "systemc.h"

SC_MODULE( PasseHaut ){
private:
	const float a0 = 0.9709023;
	const float a1 = 0.9709023;
	const float b0 = 0.9418046;

public:
    sc_fifo_in<float> data_in;
    sc_fifo_out<float> data_out;
    
	SC_CTOR(PasseHaut){
		SC_THREAD(filter);
	}

	void filter();
};

#endif //PASSEHAUT_H