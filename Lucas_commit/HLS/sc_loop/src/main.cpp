#include "./analyseur/Terminal.h"
#include "./gene/Gene.h"
#include "./modules/Conversion.h"

#include <iostream>
#include <math.h>

using namespace std;


int sc_main (int argc, char * argv []){
	cout << "Initialisation des composants..." << endl;
	Gene      			gene ("Data_Generator_1");
	Conversion 			conv ("conversion");
	Terminal 			term ("Terminal_1");
	sc_clock            clock("clock", 10, SC_NS, 0.5);  // 10 ns 50%ratio
	sc_signal  <bool> reset;

	cout << "Creation des signaux d'interconnexion..." << endl;
	sc_fifo<char>  s1(16);
	sc_fifo<char>  s2(16);

	cout << "Mapping des composants..." << endl;
	gene.s(s1);

	conv.clk(clock);
	conv.reset(reset);
	conv.e(s1);
	conv.s (s2);

	term.e (s2);

	cout << "Lancement de la simulation du circuit..." << endl;
	reset = true;
	sc_start(30, SC_NS);
	reset = false;
	sc_start(10000,SC_NS);
	cout << "Fin de la simulation du circuit..." << endl;

    return 0;
}
