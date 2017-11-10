/*
 *  Adder.h
 *  SystemC_SimpleAdder
 *
 *  Created by Le Gal on 07/05/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */
#include "Conversion.h"

void Conversion::do_conversion(){
	unsigned char d = 0;
	unsigned char filter_data = 0;

	while( true ){
		d = e.read();

		//filter_data += d - (filter_data >> 3) ;

		//s.write( filter_data >> 3 );
		unsigned char x = d & 0xFE;
		s.write( x );
	}
}
