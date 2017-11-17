/*
 *  Adder.h
 *  SystemC_SimpleAdder
 *
 *  Created by Le Gal on 07/05/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */
#include "Conversion.h"
#include "math.h"




void ConversionCouleurs(unsigned char rvb[3], unsigned char ycbcr[3]){

	int p = pow(2, wl_out - iwl_out);

	sc_uint<wl_coef-iwl_coef> c1 = 5;
	sc_uint<wl_coef-iwl_coef> c2 = 9;
	sc_uint<wl_coef-iwl_coef> c3 = 2;
	sc_uint<wl_coef-iwl_coef> c4 = 3;
	sc_uint<wl_coef-iwl_coef> c5 = 5;
	sc_uint<wl_coef-iwl_coef> c6 = 8;
	sc_uint<wl_coef-iwl_coef> c7 = 8;
	sc_uint<wl_coef-iwl_coef> c8 = 7;
	sc_uint<wl_coef-iwl_coef> c9 = 1;

	sc_uint<wl_out> d1 = c1*rvb[0];
	sc_uint<wl_out> d2 = c2*rvb[1];
	sc_uint<wl_out> d3 = c3*rvb[2];
	sc_uint<wl_out> d4 = c4*rvb[0];
	sc_uint<wl_out> d5 = c5*rvb[1];
	sc_uint<wl_out> d6 = c6*rvb[2];
	sc_uint<wl_out> d7 = c7*rvb[0];
	sc_uint<wl_out> d8 = c8*rvb[1];
	sc_uint<wl_out> d9 = c9*rvb[2];

	sc_uint<wl_inp> y  = (d1 + d2 + d3) / p;
	sc_uint<wl_inp> cb = (- d4 - d5 + d6) / p + 128;
	sc_uint<wl_inp> cr = (d7 - d8 - d9) / p + 128;

	ycbcr[0] = (unsigned char)max(0, min(255, (unsigned char) y));
	ycbcr[1] = (unsigned char)max(0, min(255, (unsigned char) cb));
	ycbcr[2] = (unsigned char)max(0, min(255, (unsigned char) cr));

}

void Conversion::do_conversion(){
	unsigned char d[3];

	while( true ){
		wait();
		o_valid.write( 0 );

		if( i_valid.read() == 1 ){	    
			sc_uint<24> dd = e.read();
			d[0] = (unsigned char) dd.range(7, 0);
			d[1] = (unsigned char) dd.range(15, 8);
			d[2] = (unsigned char) dd.range(23, 16); 

	    	ConversionCouleurs(d, t);

			sc_uint<24> ss;
			ss.range(7, 0)   = (sc_uint<8>) t[0];
			ss.range(15, 8)  = (sc_uint<8>) t[1];
			ss.range(23, 16) = (sc_uint<8>) t[2];

			wait();
			wait();
			s.write( (sc_lv<24>) ss );
			o_valid.write( 1 );
		}	
/*

		sc_uint<24> dd = e.read();

		d[0] = (unsigned char) dd.range(7, 0);
		d[1] = (unsigned char) dd.range(15, 8);
		d[2] = (unsigned char) dd.range(23, 16); 
		//d[0] = e.read();
		//d[1] = e.read();
		//d[2] = e.read();

    	ConversionCouleurs(d, t);
		
		o_valid.write( 0 );
		wait();
		if( i_valid.read() == 1 ){	    
		
			sc_uint<24> ss;

			ss.range(7, 0)   = (sc_uint<8>) t[0];
			ss.range(15, 8)  = (sc_uint<8>) t[1];
			ss.range(23, 16) = (sc_uint<8>) t[2];
			s.write( (sc_lv<24>) ss );
			//s.write( t[0] );
		    //s.write( t[1] );
		    //s.write( t[2] );
			o_valid.write( 1 );
		}	
*/
	}
}

