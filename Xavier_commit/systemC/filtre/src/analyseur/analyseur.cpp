#include "analyseur.h"

void analyseur::do_analyseur(){

	float y;
	int cpt = 0;
	int cpt_print = 10;

	while( true ){
		cpt++;
		if( ( cpt % ( NB_SAMPLE_SIM * NB_CHANNEL / 10) ) == 0 ){
			printf("\033[1;33m- %d %% \033[0m\r", cpt_print);
			fflush(stdout);
			cpt_print += 10;
		}
		y = e.read();
		if( cpt >= NB_SAMPLE_SIM * NB_CHANNEL ){
			printf("Done     \n");
		}
	}
}