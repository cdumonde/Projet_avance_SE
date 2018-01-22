#include "oled_process.h"

void oled_process::do_oled_process(){

	while( true ){

		en.write( 0 );
		sum = 0;

		for( int i = 0; i < 128; i++ ){

			save = e.read();
			s_f.write( save );
			sum += save;

		}

		if( sum ){
			s.write( 53 );
			en.write( 1 );
		}
		else{
			s.write( 9 );
			en.write( 1 );
		}

		wait();

	}

}
