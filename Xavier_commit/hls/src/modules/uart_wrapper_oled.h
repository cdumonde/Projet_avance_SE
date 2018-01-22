/*
 *  Adder.h
 *  SystemC_SimpleAdder
 *
 *  Created by Le Gal on 07/05/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */
#ifndef _uart_wrapper_oled_
#define _uart_wrapper_oled_

#include "oled_process.h"

union c2f {
	unsigned char c[4];
	float f;
};

SC_MODULE(uart_wrapper_oled)
{
public:
    sc_in<bool> clk;
    sc_in<bool> reset;

    sc_fifo_in <unsigned char> e;
    sc_fifo_out<unsigned char> s;

    sc_out 	< bool > 		en;
    sc_out 	< sc_int<6> > 	s_i;

	SC_CTOR(uart_wrapper_oled):
		oled ("Oled"),
		fin  ("FIFO_I", 192),
    	fou  ("FIFO_O", 192)
	{
		oled.clk(clk); oled.reset(reset);
		oled.e(fin);
		oled.s_f(fou);
		oled.s(s_i);
		oled.en(en);

		SC_CTHREAD(do_action1, clk.pos());
		reset_signal_is(reset, true);
		SC_CTHREAD(do_action2, clk.pos());
		reset_signal_is(reset, true);
	}

private:
    oled_process oled;
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
