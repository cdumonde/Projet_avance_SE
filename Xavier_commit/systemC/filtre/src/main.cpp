#include "./analyseur/analyseur.h"
#include "./gene/gene.h"
#include "./modules/filtre1.h"
#include "./modules/carre.h"
#include "./modules/racine.h"
#include "./modules/sc_store.h"

#include <iostream>

int main( int argc, char * argv[]){

	cout << "Initialisation des composants..." << endl;
	analyseur	ana("data_out");
	carre		car("carre");
	racine		rac("racine");
	gene		gen("data_in");
	filtre1		f1("filtrage1");
	filtre1		f2("filtrage2");
	sc_store	store1("gene-filtre1");
	store1.setFilename("output_gene_filtre1.txt");

	//cout << "Creation du signal d'horloge..." << endl;
	//sc_clock clock1( "clk", 10, SC_MS);

	cout << "Creation des signaux d'interconnexion..." << endl;
	sc_fifo		< sc_int<16> >	sig1("fifo1", 1600);
	sc_fifo		< sc_int<16> >	sig2("fifo2", 1600);
	sc_fifo  	< sc_int<16> >	sig3("fifo3", 1600);
	sc_fifo  	< sc_int<16> >	sig4("fifo4", 1600);
	sc_fifo  	< sc_int<16> >	sig5("fifo5", 1600);
	sc_fifo  	< sc_int<16> >	sig6("fifo6", 1600);

	cout << "Mapping des composants..." << endl;

	/*f1.clk(clock1);
	f2.clk(clock1);
	ana.clk(clock1);
	car.clk(clock1);
	rac.clk(clock1);*/

	gen.s(sig1);
	store1.e(sig1);

	store1.s(sig6);
	f1.e(sig6);
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
	sc_start( 1, SC_MS );

	return 0;
	
}