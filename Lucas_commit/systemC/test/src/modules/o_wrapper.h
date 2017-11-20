#include "systemc.h"

SC_MODULE(o_wrapper){
public:
	sc_in		<bool>			clk;
	sc_fifo_out	<unsigned char>	s;
	sc_in 		< sc_lv<24> >	i_data;
	sc_in		<bool>			i_valid;

	SC_CTOR(o_wrapper){
		SC_CTHREAD(do_conversion, clk.pos());
	}

	void do_conversion();
};
