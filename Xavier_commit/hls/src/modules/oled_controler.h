#ifndef OLED_CONTROLER_H
#define OLED_CONTROLER_H

#include "systemc.h"

#include "uart_wrapper.h"

#include <iostream>

SC_MODULE(oled_controler)
{
public:
    sc_in 		< bool > 	clk;
    sc_in 		< bool > 	reset;

    sc_fifo_in 	< unsigned char > 	e;
    sc_fifo_out	< unsigned char > 	s_f;
    sc_in 		< sc_int<6> > 		s;
    sc_out 		< bool >			en;

	SC_CTOR(top_level):
		wrapper		("wrapper")
	{
		uart_wrapper.clk(clk); 	uart_wrapper.rst(reset);

		uart_wrapper.e(e);
		uart_wrapper.s(s);
		uart_wrapper.s_f(s_f);
		uart_wrapper.en(en);
	}

private:

	uart_wrapper 	wrapper;
	
};

#endif
