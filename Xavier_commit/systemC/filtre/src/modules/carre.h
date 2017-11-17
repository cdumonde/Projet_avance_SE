#ifndef CARRE_H
#define CARRE_H

#define	 SC_INCLUDE_FX
#include "systemc.h"

SC_MODULE( carre ){
private:
	float x;
public:
	sc_fifo_in 		< float >	e;
	sc_fifo_out 	< float >	s;
	//sc_in 	< bool >		clk;
	//sc_in 	< bool >		e_valid;
	//sc_in 	< bool >		s_valid;

	SC_CTOR(carre){
		SC_THREAD( do_carre );
	}

	void do_carre();
	//float FiltreIIR( bool init, float x1, float x0 );//float y1
};

#endif