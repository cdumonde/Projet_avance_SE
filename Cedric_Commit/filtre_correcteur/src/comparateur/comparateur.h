#include <iostream>
#include "systemc.h"

SC_MODULE(Comparator){
public:
    sc_fifo_in<float> data_in0;
    sc_fifo_in<float> data_in1;
    sc_fifo_out<float> data_out;
    
	SC_CTOR(Comparator){
		SC_THREAD(compare);
	}

	void compare();
};