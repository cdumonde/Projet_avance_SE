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
	sc_fifo_in <char> e;
    sc_fifo_out<char> s;

    SC_CTOR(Conversion)
    {
    	SC_CTHREAD(do_conversion, clk.pos());
    	reset_signal_is(reset, true);
    }


//    SC_CTOR(Conversion)
//	{
//		SC_THREAD(do_conversion);
//	}

    void do_conversion();
};
