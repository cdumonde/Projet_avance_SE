#include "./analyseur/ImageOut.h"
#include "./gene/ImageIn.h"
#include "./modules/Conversion.h"
#include "./modules/ConversionInverse.h"
#include "./modules/i_wrapper.h"
#include "./modules/o_wrapper.h"

#include <iostream>
#include <math.h>

using namespace std;

// POUR EVITER LES DISTORTIONS, IL EST NECESSAIRE D'ULISER DES CANAUX DE TYPE
// INT CAR SINON LES TRONCATURES INT => UNSIGNED INT SONT FAUSSE !
int main (int argc, char * argv []){

	cout << "Initialisation des composants..." << endl;
	ImageIn      			gene ("Data_Generator_1");
	i_wrapper				i_w  ("Wrapper_in"); 
	Conversion 				conv ("conversion");
	o_wrapper				o_w  ("Wrapper_out");
	ConversionInverse 		iconv("iConversion");
	ImageOut 				term ("Terminal_1");

	cout << "Creation du signal d'horloge..." << endl;
	sc_clock clock1( "clk100", 10, SC_NS);

	cout << "Creation des signaux d'interconnexion..." << endl;
	sc_fifo   <unsigned char>  	s1("FIFO_1", 128);
	sc_signal < sc_lv<24> >		s2;
	sc_signal < sc_lv<24> > 	s3;
	sc_fifo   <unsigned char>  	s4("FIFO_4", 128);
	sc_fifo   <unsigned char>  	s5("FIFO_5", 128);
	sc_signal <bool>			i_v;
	sc_signal <bool>			o_v;

	//sc_report::suppress_id(212,true);

	sc_trace_file *trace = sc_create_vcd_trace_file("My_wave_form");
	sc_trace(trace, clock1, "Horloge");
	sc_trace(trace, s2, "conv.e");
	sc_trace(trace, s3, "conv.s");
	sc_trace(trace, i_v, "i_valid");
	sc_trace(trace, o_v, "o_valid");

	cout << "Mapping des composants..." << endl;
	
	gene.s(s1);
	i_w.e(s1);

	i_w.clk(clock1);
	i_w.o_valid(i_v);
	conv.i_valid(i_v);
	i_w.o_data(s2);
	conv.e(s2);

	conv.clk(clock1);
	conv.o_valid(o_v);
	o_w.i_valid(o_v);
	conv.s(s3);
	o_w.i_data(s3);

	o_w.clk(clock1);
	o_w.s(s4);
	iconv.e(s4);
		
	iconv.s(s5);
	term.e (s5);

	cout << "Lancement de la simulation du circuit..." << endl;
	sc_start(100,SC_MS);
	cout << "Fin de la simulation du circuit..." << endl;
	sc_close_vcd_trace_file( trace );


    return 0;
}
