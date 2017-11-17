#include "systemc.h"

SC_MODULE(i_wrapper){
public:
	sc_in		<bool>			clk;
	sc_fifo_in 	<unsigned char>	e;
	sc_out		< sc_lv<24> >	o_data;
	sc_out		<bool>			o_valid;

	SC_CTOR(i_wrapper){
		SC_CTHREAD(do_conversion, clk.pos());
	}

	void do_conversion();
};
