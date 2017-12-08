#include "gene.h"

sc_int<16> data1 = 1;

void gene::do_gene(){
	while( true ){
		s.write( data1 );
		wait( 25, SC_US );
	}
}