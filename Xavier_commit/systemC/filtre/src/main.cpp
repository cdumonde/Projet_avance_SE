#include "./analyseur/analyseur.h"
#include "./gene/gene.h"
#include "./modules/filtre1.h"
#include "./modules/carre.h"
#include "./modules/racine.h"
#include "./modules/filtre1.h"

#include <iostream>

int main( int argc, char * argv[]){

	cout << "Initialisation des composants..." << endl;
	analyseur	ana("data_out");
	carre		car("carre");
	racine		rac("racine");
	gene		gen("data_in");
	filtre1		f1("filtrage1");
	filtre1		f2("filtrage2");

	cout << "Creation du signal d'horloge..." << endl;
	sc_clock clock1( "clk", 10, SC_MS);

	cout << "Creation des signaux d'interconnexion..." << endl;
	sc_signal 	< sc_int<16> >	sig1;//("fifo1", 10);
	sc_signal  	< sc_int<16> >	sig2;//("fifo2", 10);
	sc_signal  	< sc_int<16> >	sig3;
	sc_signal  	< sc_int<16> >	sig4;
	sc_signal  	< sc_int<16> >	sig5;

	cout << "Mapping des composants..." << endl;

	f1.clk(clock1);
	f2.clk(clock1);
	ana.clk(clock1);
	car.clk(clock1);
	rac.clk(clock1);

	gen.s(sig1);
	f1.e(sig1);
	//gene.s2(sig2);
	//filtre1.e2(sig2);
	//gene.s3(sig3);
	//filtre1.s(sig3);
	//filtre1.e3(sig3);

	f1.s(sig2);
	car.e(sig2);

	car.s(sig3);
	f2.e(sig3);

	f2.s(sig4);
	rac.e(sig4);

	rac.s(sig5);
	ana.e(sig5);

	cout << "Lancement de la simulation du circuit..." << endl;
	sc_start(103, SC_MS);

	return 0;
	
}