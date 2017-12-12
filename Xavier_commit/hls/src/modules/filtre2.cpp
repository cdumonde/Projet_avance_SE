#include "filtre2.h"

// void filtre2::setConstant( float a0_, float a1_, float b_ ){
// 	a0 = a0_;
// 	a1 = a1_;
// 	b  = b_;
// }

float Filtre2IIR( float y1, float x1, float x0){//, float a0, float a1, float b ){

	float y;

	y = a2*x0 + a2*x1 + b2*y1 ;

	return y;
}

void filtre2::do_filtre(){

	//Initialisation de xn-1 et yn-1
	for( int i = 0; i < NB_CHANNEL; i++ ){

		mem[OFFSET_IIR_x + i] = xi;
		mem[OFFSET_IIR_y + i] = yi;

	}

	while( true ){

		for( int i = 0; i < NB_CHANNEL; i++ ){

			x0 = e.read();

			y0 = Filtre2IIR( mem[OFFSET_IIR_y + i], mem[OFFSET_IIR_x + i], x0);//, a0, a1, b );

			mem[OFFSET_IIR_x + i] = x0;
			mem[OFFSET_IIR_y + i] = y0;

			s.write( y0 );

		}

	}
}