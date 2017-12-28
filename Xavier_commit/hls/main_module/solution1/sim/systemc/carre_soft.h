#ifndef CARRE_SOFT_H
#define CARRE_SOFT_H

#define	 SC_INCLUDE_FX
#include "systemc.h"

SC_MODULE( carre_soft ){
private:
	int t[3];

public:
	sc_fifo_in <float> e;
    sc_fifo_out<float> s;
    sc_in<bool> 			   clk;
    sc_in<bool> 			   reset;

	SC_CTOR(carre_soft)
	{
		SC_CTHREAD(do_carre, clk.pos());
		reset_signal_is(reset, true);
	}

    void do_carre();
 };

#endif
