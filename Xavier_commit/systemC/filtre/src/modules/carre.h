#define	 SC_INCLUDE_FX
#include "systemc.h"

SC_MODULE( carre ){
private:
	sc_int<16> x;
public:
	sc_in 	< sc_int<16> >	e;
	sc_out 	< sc_int<16> >	s;
	sc_in 	< bool >		clk;
	//sc_in 	< bool >		e_valid;
	//sc_in 	< bool >		s_valid;

	SC_CTOR(carre){
		SC_CTHREAD( do_carre, clk.pos() );
	}

	void do_carre();
	//sc_int<16> FiltreIIR( bool init, sc_int<16> x1, sc_int<16> x0 );//sc_int<16> y1
};