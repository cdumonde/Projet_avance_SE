#ifndef CORRECTEUR_H
#define CORRECTEUR_H

#include <iostream>
#include "systemc.h"

SC_MODULE(Controller){
private:
    const float gain = 0.000001f;
public:
    sc_fifo_in<float> data_in;
    sc_fifo_out<float> data_out;
    
	SC_CTOR(Controller){
		SC_THREAD(control);
	}

	void control();
};

#endif 