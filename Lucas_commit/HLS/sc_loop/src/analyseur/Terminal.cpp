/*
 *  Adder.cpp
 *  SystemC_SimpleAdder
 *
 *  Created by Le Gal on 07/05/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */

#include "Terminal.h"

void Terminal::do_print()
{
	while( true ){
		int d = e.read();
		cout << "Time = " << sc_time_stamp() << " => Valeur recue : " << d << endl;
	}
}
