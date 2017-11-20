#include <iostream>
#include "systemc.h"

SC_MODULE(Controller){
private:
    const float gain = 1.0f;
public:
    sc_fifo_in<float> data_in;
    sc_fifo_out<float> data_out;
    
	SC_CTOR(Controller){
		SC_THREAD(control);
	}

	void control();
};