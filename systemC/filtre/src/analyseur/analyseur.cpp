#include "analyseur.h"

void analyseur::do_analyseur(){

	sc_int<16> y;

	while( true ){
		wait();
		y = e.read();
		cout << y << endl;
	}
}