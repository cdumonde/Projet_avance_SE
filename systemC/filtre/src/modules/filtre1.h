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
	sc_in 	< sc_int<16> >	e;
	//sc_in 	< sc_int<16> >	e2;
	//sc_in 	< sc_int<16> >	e3;
	sc_out 	< sc_int<16> >	s;
	sc_in 	< bool >		clk;
	//sc_in 	< bool >		e_valid;
	//sc_in 	< bool >		s_valid;

	SC_CTOR(filtre1){
		SC_CTHREAD( do_filtre, clk.pos() );
	}

	void do_filtre();
	//sc_int<16> FiltreIIR( bool init, sc_int<16> x1, sc_int<16> x0 );//sc_int<16> y1
};

#endif