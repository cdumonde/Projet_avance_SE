#include "racine.h"

void racine::do_racine(){

	while( true ){
		x = e.read();
		x = sqrt(x);
	 	s.write( x );
	}
}