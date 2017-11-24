#include "./analyseur/analyseur.h"
#include "./gene/gene.h"
#include "./modules/comparateur.h"
#include "./modules/doubleur.h"
#include "./modules/filtre1.h"
#include "./modules/carre.h"
#include "./modules/racine.h"
#include "./modules/sc_store.h"

#include <iostream>

#define a01  63.0/64
#define a11  -63.0/64
#define	b1	-31.0/32
#define a2	1.0/4096
#define	b2	2047.0/2048


int main( int argc, char * argv[]){

	cout << "Initialisation des composants..." << endl;
	gene		gen("data_in");
	doubleur	doub("dédoubleur");
	comparateur	comp("comparaison");
	filtre1		f1("filtrage1");
	carre		car("carre");
	filtre1		f2("filtrage2");
	racine		rac("racine");
	analyseur	ana("data_out");

	sc_store	store1("gene_filtre1");
	sc_store	store2("filtre1_carre");
	sc_store	store3("carre_filtre2");
	sc_store	store4("filtre2_racine");
	sc_store	store5("racine_comparateur");
	sc_store	store6("comparateur_analyseur");

	f1.setConstant( a01, a11, b1 );
	printf("a01 = %f a11 = %f b1 = %f\n", a01, a11, b1);
	f2.setConstant( a2, a2, b2 );
	printf("a02 = %f a12 = %f b1 = %f\n", a2, a2, b2);

	store1.setFilename("/Users/Xavier/Documents/Mes\ Documents/Cours_nsave/Enseirb-E3/pr310/store1.txt");
	store2.setFilename("/Users/Xavier/Documents/Mes\ Documents/Cours_nsave/Enseirb-E3/pr310/store2.txt");
	store3.setFilename("/Users/Xavier/Documents/Mes\ Documents/Cours_nsave/Enseirb-E3/pr310/store3.txt");
	store4.setFilename("/Users/Xavier/Documents/Mes\ Documents/Cours_nsave/Enseirb-E3/pr310/store4.txt");
	store5.setFilename("/Users/Xavier/Documents/Mes\ Documents/Cours_nsave/Enseirb-E3/pr310/store5.txt");
	store6.setFilename("/Users/Xavier/Documents/Mes\ Documents/Cours_nsave/Enseirb-E3/pr310/store6.txt");
	gen.set_Filename("/Users/Xavier/Documents/Mes\ Documents/Cours_nsave/Enseirb-E3/pr310/data_in.txt");

	//cout << "Creation du signal d'horloge..." << endl;
	//sc_clock clock1( "clk", 10, SC_MS);

	cout << "Creation des signaux d'interconnexion..." << endl;
	sc_fifo		< float >	sig1("fifo1", 8192);
	sc_fifo		< float >	sig2("fifo2", 8192);
	sc_fifo  	< float >	sig3("fifo3", 8192);
	sc_fifo  	< float >	sig4("fifo4", 8192);
	sc_fifo  	< float >	sig5("fifo5", 8192);
	sc_fifo  	< float >	sig6("fifo6", 8192);
	sc_fifo		< float >	doub1("doub1", 8192);
	sc_fifo		< float >	doub2("doub2", 8192);

	sc_fifo  	< float >	sig_store1("store1", 8192);
	sc_fifo  	< float >	sig_store2("store2", 8192);
	sc_fifo  	< float >	sig_store3("store3", 8192);
	sc_fifo  	< float >	sig_store4("store4", 8192);
	sc_fifo  	< float >	sig_store5("store5", 8192);
	sc_fifo  	< float >	sig_store6("store6", 8192);

	cout << "Mapping des composants..." << endl;

	gen.value(sig1);
	store1.e(sig1);
	store1.s(sig_store1);
	f1.e(sig_store1);

	f1.s(sig2);
	store2.e(sig2);
	store2.s(sig_store2);
	doub.e(sig_store2);

	doub.s1(doub1);
	car.e(doub1);

	doub.s2(doub2);
	comp.e1(doub2);

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
	comp.e2(sig_store5);

	comp.s(sig6);
	store6.e(sig6);
	store6.s(sig_store6);
	ana.e(sig_store6);

	cout << "Lancement de la simulation du circuit..." << endl;
	sc_start( 10000, SC_MS );

	return 0;
	
}