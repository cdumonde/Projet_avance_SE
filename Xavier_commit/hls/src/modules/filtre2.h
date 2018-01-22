#ifndef FILTRE2_H
#define FILTRE2_H

#define	 SC_INCLUDE_FX
#include "systemc.h"
#include "constant.h"

float Filtre2IIR( float y1, float x1, float x0);//, float a0, float a1, float b );

SC_MODULE( filtre2 ){
private:
	float 	y0;
	float 	x0;
	float   mem_x[ NB_CHANNEL ];
	float   mem_y[ NB_CHANNEL ];
public:
    sc_in 			< bool > 	clk;
    sc_in 			< bool > 	reset;

	sc_fifo_in 		< float >	e;
	sc_fifo_out 	< float >	s;

	SC_CTOR(filtre2){
		SC_CTHREAD( do_filtre, clk.pos() );
		reset_signal_is(reset, true);
	}

	void do_filtre();
};

#endif