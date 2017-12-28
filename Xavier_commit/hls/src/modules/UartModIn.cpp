#include "UartModIn.h"

void UartModIn::do_recv(){

	CharFloat tmp;

	while(true){

		tmp.c[0] = e.read();
		tmp.c[1] = e.read();
		tmp.c[2] = e.read();
		tmp.c[3] = e.read();

		s.write( tmp.f );
	}
}
