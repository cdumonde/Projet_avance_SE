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
	sc_store	store1("gene_filtre1");
	sc_store	store2("filtre1_carre");
	sc_store	store3("carre_filtre2");
	sc_store	store4("filtre2_racine");
	sc_store	store5("racine_analyseur");
	store1.setFilename("store1.txt");
	store2.setFilename("store2.txt");
	store3.setFilename("store3.txt");
	store4.setFilename("store4.txt");
	store5.setFilename("store5.txt");
	gen.set_Filename("G20151110A-01.txt");

	//cout << "Creation du signal d'horloge..." << endl;
	//sc_clock clock1( "clk", 10, SC_MS);

	cout << "Creation des signaux d'interconnexion..." << endl;
	sc_fifo		< float >	sig1("fifo1", 1600);
	sc_fifo		< float >	sig2("fifo2", 1600);
	sc_fifo  	< float >	sig3("fifo3", 1600);
	sc_fifo  	< float >	sig4("fifo4", 1600);
	sc_fifo  	< float >	sig5("fifo5", 1600);
	sc_fifo  	< float >	sig_store1("store1", 1600);
	sc_fifo  	< float >	sig_store2("store2", 1600);
	sc_fifo  	< float >	sig_store3("store3", 1600);
	sc_fifo  	< float >	sig_store4("store4", 1600);
	sc_fifo  	< float >	sig_store5("store5", 1600);

	cout << "Mapping des composants..." << endl;

	gen.value(sig1);
	store1.e(sig1);
	store1.s(sig_store1);
	f1.e(sig_store1);

	f1.s(sig2);
	store2.e(sig2);
	store2.s(sig_store2);
	car.e(sig_store2);

	car.s(sig3);
	store3.e(sig3);
	store3.s(sig_store3);
	f2.e(sig_store3);

	f2.s(sig4);
	store4.e(sig4);
	store4.s(sig_store4);
	rac.e(sig_store4);

	rac.s(sig5);
	store5.e(sig5);
	store5.s(sig_store5);
	ana.e(sig_store5);

	cout << "Lancement de la simulation du circuit..." << endl;
	sc_start( 1, SC_MS );

	return 0;
	
}