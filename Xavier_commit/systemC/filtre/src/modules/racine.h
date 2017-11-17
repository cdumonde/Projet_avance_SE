#ifndef RACINE_H
#define RACINE_H

#define	 SC_INCLUDE_FX
#include "systemc.h"
#include <cmath>

SC_MODULE( racine ){
private:
	float x;
public:
	sc_fifo_in 		< float >	e;
	sc_fifo_out 	< float >	s;
	//sc_in 	< bool >		clk;
	//sc_in 	< bool >		e_valid;
	//sc_in 	< bool >		s_valid;

	SC_CTOR(racine){
		SC_THREAD( do_racine );
	}

	void do_racine();
	//float FiltreIIR( bool init, float x1, float x0 );//float y1
};

#endif