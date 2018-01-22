/*
 *  Adder.h
 *  SystemC_SimpleAdder
 *
 *  Created by Le Gal on 07/05/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */
#ifndef _uart_wrapper_
#define _uart_wrapper_

#include "filtre2.h"

union c2f {
	unsigned char c[4];
	float f;
};

SC_MODULE(uart_wrapper)
{
public:
    sc_in<bool> clk;
    sc_in<bool> reset;

    sc_fifo_in <unsigned char> e;
    sc_fifo_out<unsigned char> s;

	SC_CTOR(uart_wrapper):
		c    ("Carre"),
		fin  ("FIFO_I", 192),
    	fou  ("FIFO_O", 192)
	{
		c.clk(clk); c.reset(reset);
		c.e(fin);
		c.s(fou);

		SC_CTHREAD(do_action1, clk.pos());
		reset_signal_is(reset, true);
		SC_CTHREAD(do_action2, clk.pos());
		reset_signal_is(reset, true);
	}

private:
    filtre2 c;
	sc_fifo<float> fin;
	sc_fifo<float> fou;


	void do_action1(){

		while( true ){
			union c2f buffer;

			buffer.c[0] = e.read();
			buffer.c[1] = e.read();
			buffer.c[2] = e.read();
			buffer.c[3] = e.read();

			fin.write(buffer.f);
		}
	}

	void do_action2(){

		while( true ){
			union c2f buffer;

			buffer.f = fou.read();

			s.write(buffer.c[0]);
			s.write(buffer.c[1]);
			s.write(buffer.c[2]);
			s.write(buffer.c[3]);
		}
	}
};

#endif
