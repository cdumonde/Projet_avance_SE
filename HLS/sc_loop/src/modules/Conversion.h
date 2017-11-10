/*
 *  Adder.h
 *  SystemC_SimpleAdder
 *
 *  Created by Le Gal on 07/05/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */
#include "systemc.h"

SC_MODULE(Conversion)
{
public:
	sc_in      <bool> clk;
	sc_in      <bool> reset;
	sc_fifo_in <unsigned char> e;
    sc_fifo_out<unsigned char> s;

    SC_CTOR(Conversion)
    {
    	SC_CTHREAD(do_conversion, clk.pos());
    	reset_signal_is(reset, true);
    }

    void do_conversion();
};
