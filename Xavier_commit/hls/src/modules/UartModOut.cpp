#include "UartModOut.h"

void UartModOut::do_send(){

	CharFloat tmp;

	while(true){

		tmp.f= e.read();

		s.write( tmp.c[0]);
		s.write( tmp.c[1]);
		s.write( tmp.c[2]);
		s.write( tmp.c[3]);
	}
}
