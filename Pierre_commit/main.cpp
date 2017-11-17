#include "gene.h"
#include "sc_store.h"
#include "analyseur.h"

int sc_main( int argc, char * argv[]) {

    gene        gen("generator");
    sc_store    store("storage");
    analyseur   analy("analyseur");

    cout << "Ouverture du fichier d'entrée..." << endl;

    gen.set_Filename("/home/pierre/CLionProjects/Generator/G20151110A-01.txt");

    cout << "Création des signaux..." << endl;

    sc_fifo     <float>	sig1("fifo1", 5);
    sc_fifo     <float>	sig2("fifo2", 5);


    cout << "Interconnexion..." << endl;

    gen.value(sig1);
    store.e(sig1);

    store.s(sig2);
    analy.e(sig2);

    cout << "Création du fichier de sortie..." << endl;

    store.setFilename("/home/pierre/CLionProjects/Generator/output_gene_filtre1.txt");

    cout << "Lancement de la simulation du circuit..." << endl;

    sc_start( 1, SC_MS );

    return 0;
}