#include "racine.h"

void racine::do_racine(){

	while( true ){
		wait();
		x = e.read();
		x = sqrt(x);
	 	s.write( x );
	}
}