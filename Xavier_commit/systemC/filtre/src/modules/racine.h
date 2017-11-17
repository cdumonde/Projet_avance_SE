#ifndef RACINE_H
#define RACINE_H

#define	 SC_INCLUDE_FX
#include "systemc.h"
#include <cmath>

SC_MODULE( racine ){
private:
	sc_int<16> x;
public:
	sc_fifo_in 		< sc_int<16> >	e;
	sc_fifo_out 	< sc_int<16> >	s;
	//sc_in 	< bool >		clk;
	//sc_in 	< bool >		e_valid;
	//sc_in 	< bool >		s_valid;

	SC_CTOR(racine){
		SC_THREAD( do_racine );
	}

	void do_racine();
	//sc_int<16> FiltreIIR( bool init, sc_int<16> x1, sc_int<16> x0 );//sc_int<16> y1
};

#endif