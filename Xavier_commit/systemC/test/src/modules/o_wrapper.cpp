#include "o_wrapper.h"

void o_wrapper::do_conversion(){
	while( true ){
		wait();
		if( i_valid == 1 ){
			sc_uint<24> d = i_data.read();
			unsigned char a = d.range(7,0);
			unsigned char b = d.range(15,8);
			unsigned char c = d.range(23,16);
			s.write( a );
			s.write( b );
			s.write( c );
		}
	}
}
