#include "filtre1.h"

// void filtre1::setConstant( float a0_, float a1_, float b_ ){
// 	a0 = a0_;
// 	a1 = a1_;
// 	b  = b_;
// }

float Filtre1IIR( float y1, float x1, float x0){//, float a0, float a1, float b ){

	float y;

	y = a01*x0 - a11*x1 + b1*y1 ;

	return y;
}

void filtre1::do_filtre(){

	//Initialisation de xn-1 et yn-1
	for( int i = 0; i < NB_CHANNEL; i++ ){

		mem_x[i] = xi;
		mem_y[i] = yi;

	}

	while( true ){

		for( int i = 0; i < NB_CHANNEL; i++ ){

			x0 = e.read();

			y0 = Filtre1IIR( mem_y[i], mem_x[i], x0);//, a0, a1, b );

			mem_x[i] = x0;
			mem_y[i] = y0;

			s.write( y0 );

		}

	}
}