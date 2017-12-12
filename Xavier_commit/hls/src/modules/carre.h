#ifndef CARRE_H
#define CARRE_H

#define	 SC_INCLUDE_FX
#include "systemc.h"
#include "constant.h"

SC_MODULE( carre ){
private:
	float x;
public:
    sc_in 			< bool > 	clk;
    sc_in 			< bool > 	reset;

	sc_fifo_in 		< float >	e;
	sc_fifo_out 	< float >	s;

	SC_CTOR(carre){
		SC_CTHREAD( do_carre, clk.pos() );
		reset_signal_is(reset, true);
	}

	void do_carre();
};

#endif