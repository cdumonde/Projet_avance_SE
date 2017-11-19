#ifndef DIFFERENTIEL_H
#define DIFFERENTIEL_H

#include <iostream>
#include "systemc.h"

SC_MODULE(Differential){
private:
    const float cst = 0.159; 
public:
    sc_fifo_in<float> data_in;
    sc_fifo_out<float> data_out;
    
	SC_CTOR(Differential){
		SC_THREAD(substract);
	}

	void substract();
};

#endif