#include <iostream>
#include "systemc.h"

SC_MODULE(Detector){
public:
    sc_fifo_in<float> data_in0;
    sc_fifo_in<float> data_in1;
    
	SC_CTOR(Detector){
		SC_THREAD(detect);
	}

	void detect();
};