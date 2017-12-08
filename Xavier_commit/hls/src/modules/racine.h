#ifndef RACINE_H
#define RACINE_H

#define	 SC_INCLUDE_FX
#include "systemc.h"
#include <cmath>
#include "constant.h"

SC_MODULE( racine ){
private:
	float x;
public:
	sc_fifo_in 		< float >	e;
	sc_fifo_out 	< float >	s;

	SC_CTOR(racine){
		SC_THREAD( do_racine );
	}

	void do_racine();
};

#endif