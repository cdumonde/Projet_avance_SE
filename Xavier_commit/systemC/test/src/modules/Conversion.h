/*
 *  Adder.h
 *  SystemC_SimpleAdder
 *
 *  Created by Le Gal on 07/05/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */
#define SC_INCLUDE_FX
#include "systemc.h"
#define min( X, Y ) ( ( ( X ) < ( Y ) ) ? ( X ) : ( Y ) )
#define max( X, Y ) ( ( ( X ) > ( Y ) ) ? ( X ) : ( Y ) )
#define iwl_coef 0
#define wl_coef 4
#define iwl_inp 8
#define wl_inp 8
#define iwl_out 8
#define wl_out 12

void ConversionCouleurs(unsigned char rvb[3], unsigned char ycbcr[3]);

SC_MODULE(Conversion)
{
private:
	unsigned char t[3];

public:
	//sc_fifo_in <unsigned char> e;
	sc_in 	   < sc_lv <24> >  	e;
	sc_out	   < sc_lv <24> >  	s;
    //sc_fifo_out<unsigned char> s;
	sc_in      <bool>			clk;
	sc_in      <bool>			i_valid;
	sc_out     <bool>			o_valid;

	SC_CTOR(Conversion)
	{
		SC_CTHREAD(do_conversion, clk.pos());
		//sensitive << e;
	}

    void do_conversion();
 };


