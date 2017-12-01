#include "analyseur.h"

void analyseur::do_analyseur(){

	float y;
	int cpt = 0;
	int cpt_print = 10;

	while( true ){
		cpt++;
		if( ( cpt % ( 4000 * SIM ) ) == 0 ){
			printf("\033[1;33m %d %% \033[0m\n", cpt_print);
			cpt_print += 10;
		}
		y = e.read();
	}
}