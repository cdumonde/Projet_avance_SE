#ifndef PASSEHAUT_H
#define PASSEHAUT_H

#include <iostream>
#include "systemc.h"

SC_MODULE( PasseHaut ){
public:
    sc_fifo_in<float> data_in;
    sc_fifo_out<float> data_out;
    
	SC_CTOR(PasseHaut){
		SC_THREAD(filter);
	}

	void filter();
};

#endif //PASSEHAUT_H