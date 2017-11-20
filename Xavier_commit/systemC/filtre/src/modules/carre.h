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

	SC_CTOR(carre){
		SC_THREAD( do_carre );
	}

	void do_carre();
};

#endif