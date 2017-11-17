/*
 *  Adder.h
 *  SystemC_SimpleAdder
 *
 *  Created by Le Gal on 07/05/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */
#include "ConversionInverse.h"
#define min( X, Y ) ( ( ( X ) < ( Y ) ) ? ( X ) : ( Y ) )
#define max( X, Y ) ( ( ( X ) > ( Y ) ) ? ( X ) : ( Y ) )

void ConversionCouleursInverse(unsigned char ycbcr[3], unsigned char rvb[3]){
	rvb[0] = max(0, min(255, (ycbcr[0] + 1.402*(ycbcr[2]-128))));
	rvb[1] = max(0, min(255, (ycbcr[0] - 0.34414*(ycbcr[1]-128) - 0.71414*(ycbcr[2]-128))));
	rvb[2] = max(0, min(255, (ycbcr[0] + 1.772*(ycbcr[1]-128))));
}

void ConversionInverse::do_conversion(){
	unsigned char d[3];
	while( true ){
		d[0] = e.read();
		d[1] = e.read();
		d[2] = e.read();
		
		ConversionCouleursInverse(d, t);
	   
		s.write( t[0] );
        s.write( t[1] );
		s.write( t[2] );
	}
}

