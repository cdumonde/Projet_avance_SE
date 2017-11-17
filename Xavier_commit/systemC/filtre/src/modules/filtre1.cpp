#include "filtre1.h"

sc_int<16> FiltreIIR( sc_int<16> y1, sc_int<16> x1, sc_int<16> x0 ){//sc_int<16> y1,

	sc_int<16> y;

	// if( init ){
	// 	y = yi*b1 + x0*a0 + x1*a1;
	// }
	// else{
	// 	y = yi*b1 + x0*a0 + x1*a1;
	// }

	y = y1*b1 + x0*a0 + x1*a1;

	return y;
}

void filtre1::do_filtre(){

	x1 = xi;
	y1 = yi;

	//bool 		init = 1;

	while( true ){
		//s_valide.write( 0 );

		x0 = e.read();

		y0 = FiltreIIR( y1, x1, x0 );//y1

		x1 = x0;
		y1 = y0;


		s.write( y0 );
		//s_valide.write( 1 );

	}
}