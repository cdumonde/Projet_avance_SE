#define	 SC_INCLUDE_FX
#include "systemc.h"
#include <cmath>

SC_MODULE( racine ){
private:
	sc_int<16> x;
public:
	sc_in 	< sc_int<16> >	e;
	sc_out 	< sc_int<16> >	s;
	sc_in 	< bool >		clk;
	//sc_in 	< bool >		e_valid;
	//sc_in 	< bool >		s_valid;

	SC_CTOR(racine){
		SC_CTHREAD( do_racine, clk.pos() );
	}

	void do_racine();
	//sc_int<16> FiltreIIR( bool init, sc_int<16> x1, sc_int<16> x0 );//sc_int<16> y1
};