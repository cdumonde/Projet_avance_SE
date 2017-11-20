/*
 *  Adder.cpp
 *  SystemC_SimpleAdder
 *
 *  Created by Le Gal on 07/05/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */

#include "Gene.h"

void Gene::do_gen()           // process
{
	int d;
	while(1){
		d = (int)(rand()%65536);
		cout << "Time = " << sc_time_stamp() << " => Valeur emise : " << d << endl;
		s.write( d );
		wait( 10, SC_NS );
	}
}
