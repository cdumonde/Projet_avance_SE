#include "./analyseur.h"
#include "./gene.h"
#include "./sc_store.h"
#include "./carre_soft.h"

#include <iostream>
#include <math.h>

using namespace std;

int sc_main( int argc, char * argv[]){

    cout << "Initialisation des composants..." << endl;

    gene			gen("Gene");
    carre_soft		sqr("Chain");
    analyseur   	ana("data_out");
    sc_store    	store1("result");

    store1.setFilename("data_out.txt");

    gen.set_Filename("G20151110A-01.txt");

    cout << "Creation du signal d'horloge..." << endl;
    sc_clock clock1( "clk", 10, SC_MS);
    sc_signal<bool> reset( "reset");

    reset = false;

    cout << "Creation des signaux d'interconnexion..." << endl;
    sc_fifo     <float>   sig1("fifo1", 8192);
    sc_fifo     <float>   sig2("fifo2", 8192);
    sc_fifo     <float>   sig_out("fifo3", 8192);

    cout << "Mapping des composants..." << endl;

    gen.value(sig1);

    sqr.e(sig1);
    sqr.clk(clock1);
    sqr.reset(reset);
    sqr.s(sig2);

    store1.e(sig2);
    store1.s(sig_out);

    ana.e(sig_out);

    cout << "Lancement de la simulation du circuit..." << endl;
    sc_start( 1000, SC_MS );

    return 0;
}

