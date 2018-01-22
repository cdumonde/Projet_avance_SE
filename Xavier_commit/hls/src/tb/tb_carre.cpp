#include "../analyseur/analyseur.h"
#include "../gene/gene.h"
#include "../analyseur/sc_store.h"
#include "../gene/carre_soft.h"
#include "../modules/constant.h"
//#include "../modules/filtre1.h"
//#include "../modules/carre.h"

#include <iostream>
#include <math.h>

using namespace std;

int sc_main( int argc, char * argv[]){

    cout << "Initialisation des composants..." << endl;

    gene			gen("Gene");
//    filtre1			f1("filtre1");
 //   carre 			c("carre");
    carre_soft		sqr("Chain");
    analyseur   	ana("data_out");
    sc_store    	store1("result");

    store1.setFilename("Y:\\Documents\\MesDocuments\\Cours_nsave\\Enseirb-E3_nsave\\pr310\\toto.txt");

    gen.set_Filename("Y:\\Documents\\MesDocuments\\Cours_nsave\\Enseirb-E3_nsave\\pr310\\store6.txt");

    cout << "Creation du signal d'horloge..." << endl;
    sc_clock clock1( "clk", 10, SC_MS);
    sc_signal<bool> reset( "reset");

    reset = false;

    cout << "Creation des signaux d'interconnexion..." << endl;
    sc_fifo     <float>   sig1("fifo1", 8192);
//    sc_fifo     <float>   sig12("fifo12", 8192);
//    sc_fifo		<float>   sig13("fifo13", 8192);
    sc_fifo     <float>   sig2("fifo2", 8192);
    sc_fifo     <float>   sig_out("fifo3", 8192);

    cout << "Mapping des composants..." << endl;

    gen.value(sig1);

//    f1.e(sig12);
//    f1.s(sig13);
//    f1.clk(clock1);
//    f1.reset(reset);

//    c.e(sig13);
//    c.s(sig1);
//    c.clk(clock1);
//    c.reset(reset);

    sqr.e(sig1);
    sqr.clk(clock1);
    sqr.reset(reset);
    sqr.s(sig2);

    store1.e(sig2);
    store1.s(sig_out);

    ana.e(sig_out);

    cout << "Lancement de la simulation du circuit..." << endl;
    sc_start( T_SIM, SC_US );

    return 0;
}

