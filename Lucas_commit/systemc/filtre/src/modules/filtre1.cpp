#include "filtre1.h"

void filtre1::setConstant( float a0_, float a1_, float b_ ){
	a0 = a0_;
	a1 = a1_;
	b  = b_;
}

float FiltreIIR( float y1, float x1, float x0, float a0, float a1, float b ){

	float y;

	y = a0*x0 + a1*x1 + b*y1 ;
	return y;
}

void filtre1::do_filtre(){

	x1 = xi;
	y1 = yi;

	while( true ){

		x0 = e.read();

		y0 = FiltreIIR( y1, x1, x0, a0, a1, b );

		x1 = x0;
		y1 = y0;

		s.write( y0 );

	}
}