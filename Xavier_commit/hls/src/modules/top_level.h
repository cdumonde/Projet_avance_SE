#ifndef TOP_LEVEL_H
#define TOP_LEVEL_H

#include "systemc.h"

#include "comparateur.h"
#include "doubleur.h"
#include "filtre1.h"
#include "filtre2.h"
#include "carre.h"
#include "racine.h"
#include "constant.h"
#include "UartModIn.h"
#include "UartModOut.h"

#include <iostream>

SC_MODULE(top_level)
{
public:
    sc_in 		< bool > 	clk;
    sc_in 		< bool > 	reset;

    sc_fifo_in 	< unsigned char > 	e;
    sc_fifo_out	< unsigned char > 	s;

	SC_CTOR(top_level):
		uart_in		("uart_in"		),
		uart_out	("uart_out"		),
		doub 		("dedoubleur"	),
		comp 		("comparaison"	),
		f1 			("filtrage1"	),
		car  		("carre"		),
		f2    		("filtrage2"	),
		rac 		("racine"		),

		sig_in		("fifo1", 8192	),
		sig_out		("fifo2", 8192	),
		sig1		("fifo1", 8192	),
		sig2		("fifo2", 8192	),
		sig3		("fifo3", 8192	),
		sig4		("fifo4", 8192	),
		doub1		("doub1", 8192	),
		doub2		("doub2", 8192	)
	{
		uart_in.clk(clk); 	uart_in.rst(reset);
		uart_out.clk(clk);	uart_out.rst(reset);
		doub.clk(clk); 		doub.reset(reset);
		comp.clk(clk);  	comp.reset(reset);
		f1.clk(clk);        f1.reset(reset);
		car.clk(clk); 		car.reset(reset);
		f2.clk(clk); 		f2.reset(reset);
		comp.clk(clk); 		comp.reset(reset);

		uart_in.e(e);
		uart_in.s(sig1);	doub.e(sig1);
		doub.s1(doub1);		comp.e1(doub1);
		doub.s2(doub2);		car.e(doub2);
		car.s(sig2);		f2.e(sig2);
		f2.s(sig3);			rac.e(sig3);
		rac.s(sig4);		comp.e2(sig4);
		comp.s(sig_out);	uart_out.e(sig_out);
		uart_out.s(s);
	}

private:

	UartModIn 	uart_in;
	UartModOut	uart_out;
	doubleur	doub;
	comparateur	comp;
	filtre1		f1;
	carre		car;
	filtre2		f2;
	racine		rac;

	sc_fifo 	< float >   sig_in;
	sc_fifo 	< float >	sig_out;
	sc_fifo		< float >	sig1;
	sc_fifo		< float >	sig2;
	sc_fifo  	< float >	sig3;
	sc_fifo  	< float >	sig4;
	sc_fifo		< float >	doub1;
	sc_fifo		< float >	doub2;
};

#endif
