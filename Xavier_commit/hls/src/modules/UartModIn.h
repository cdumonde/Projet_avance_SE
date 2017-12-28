#ifndef _UART_MOD_IN_
#define _UART_MOD_IN_

#include "systemc.h"

#ifndef _UNION_CHAR_FLOAT_
#define _UNION_CHAR_FLOAT_
typedef union _CharFloat{
	char c[4];
	float f;
}CharFloat;
#endif

SC_MODULE(UartModIn){

private:

public:
	sc_fifo_in  <unsigned char> e;
	sc_fifo_out <float> s;
	sc_in  <bool> clk, rst;

	SC_CTOR(UartModIn){
		SC_CTHREAD(do_recv, clk.pos());
		reset_signal_is(rst, true);
	}

	void do_recv();
};

#endif /* _UART_MOD_IN_ */
