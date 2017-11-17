#ifndef FILTRE1_H
#define FILTRE1_H

#define	 SC_INCLUDE_FX
#include "systemc.h"

#define  a0 1
#define  a1 0
#define  b1 1
#define  xi 1
#define  yi 1

sc_int<16> FiltreIIR( sc_int<16> y1, sc_int<16> x1, sc_int<16> x0 );//sc_int<16> y1

SC_MODULE( filtre1 ){
private:
	sc_int<16> 	y0;
	sc_int<16>  y1;
	sc_int<16> 	x0;
	sc_int<16> 	x1;
public:
	sc_fifo_in 		< sc_int<16> >	e;
	sc_fifo_out 	< sc_int<16> >	s;

	SC_CTOR(filtre1){
		SC_THREAD( do_filtre );
	}

	void do_filtre();
	//sc_int<16> FiltreIIR( bool init, sc_int<16> x1, sc_int<16> x0 );//sc_int<16> y1
};

#endif