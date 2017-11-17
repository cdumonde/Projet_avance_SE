#include "analyseur.h"

void analyseur::do_analyseur(){

	sc_int<16> y;

	while( true ){
		y = e.read();
		cout << y << endl;
	}
}