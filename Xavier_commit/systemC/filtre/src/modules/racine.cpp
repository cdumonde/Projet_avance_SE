#include "racine.h"

void racine::do_racine(){

	while( true ){
		x = abs(e.read());
		x = sqrt(x);
	 	s.write( 80*x );//82
	}
}