#ifndef FILTRE1_H
#define FILTRE1_H

#define	 SC_INCLUDE_FX
#include "systemc.h"

#define  a0 1
#define  a1 0
#define  b1 1
#define  xi 1
#define  yi 1

float FiltreIIR( float y1, float x1, float x0 );//float y1

SC_MODULE( filtre1 ){
private:
	float 	y0;
	float   y1;
	float 	x0;
	float 	x1;
public:
	sc_fifo_in	< float >	e;
	sc_fifo_out 	< float >	s;

	SC_CTOR(filtre1){
		SC_THREAD( do_filtre );
	}

	void do_filtre();
	//float FiltreIIR( bool init, float x1, float x0 );//float y1
};

#endif
