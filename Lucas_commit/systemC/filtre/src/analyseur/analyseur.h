#ifndef ANALYSEUR_H
#define ANALYSEUR_H

#define SC_INCLUDE_FX
#include "systemc.h"

SC_MODULE( analyseur ){
	sc_fifo_in 		< bool > 	e;
	//sc_in 	< bool > 		clk;

	void do_analyseur();

	SC_CTOR( analyseur ){
		SC_THREAD( do_analyseur );
	}
};

#endif
