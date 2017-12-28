#ifndef _UART_MOD_OUT_
#define _UART_MOD_OUT_

#include "systemc.h"

#ifndef _UNION_CHAR_FLOAT_
#define _UNION_CHAR_FLOAT_
typedef union _CharFloat{
	char c[4];
	float f;
}CharFloat;
#endif

SC_MODULE(UartModOut){

private:

public :
	sc_fifo_in  <float> e;
	sc_fifo_out <unsigned char> s;
	sc_in  <bool> clk, rst;

	SC_CTOR(UartModOut){
		SC_CTHREAD(do_send, clk.pos());
		reset_signal_is(rst, true);
	}

	void do_send();
};

#endif /*_UART_MOD_OUT_ */
