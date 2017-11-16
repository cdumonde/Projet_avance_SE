#include "i_wrapper.h"

void i_wrapper::do_conversion(){
	while( true ){
		sc_uint<8> a = e.read();		
		sc_uint<8> b = e.read();		
		sc_uint<8> c = e.read();		
		sc_uint<24> d = ( c, b, a );		

		wait();
		o_data.write( d );
		o_valid.write( 1 );
		wait();
		o_data.write( 0 );
		o_valid.write( 0 );
		wait();
	}
}
			
