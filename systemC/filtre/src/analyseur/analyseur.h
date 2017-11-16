#define SC_INCLUDE_FX
#include "systemc.h"

SC_MODULE( analyseur ){
	sc_in 	< sc_int<16> > 	e;
	sc_in 	< bool > 		clk;

	void do_analyseur();

	SC_CTOR( analyseur ){
		SC_CTHREAD( do_analyseur, clk.pos() );
	}
};