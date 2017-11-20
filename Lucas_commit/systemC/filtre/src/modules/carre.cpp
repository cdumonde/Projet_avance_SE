#include "carre.h"

void carre::do_carre(){

	while( true ){
		x = e.read();
		x = x*x;
	 	s.write( x );
	}
}
