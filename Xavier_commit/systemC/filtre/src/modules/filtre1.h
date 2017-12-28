#ifndef FILTRE1_H
#define FILTRE1_H

#define	 SC_INCLUDE_FX
#include "systemc.h"
#include "constant.h"

float Filtre1IIR( float y1, float x1, float x0);//, float a0, float a1, float b );

SC_MODULE( filtre1 ){
private:
	float 	y0;
	float 	x0;
	float   mem_x[ NB_CHANNEL ];
	float   mem_y[ NB_CHANNEL ];
public:
	sc_fifo_in 		< float >	e;
	sc_fifo_out 	< float >	s;

	SC_CTOR(filtre1){
		SC_THREAD( do_filtre );
	}

	void do_filtre();
//	void setConstant( float a0_, float a1_, float b_ );
};

#endif