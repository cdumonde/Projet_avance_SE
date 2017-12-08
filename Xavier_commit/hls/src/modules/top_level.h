#ifndef TOP_LEVEL_H
#define TOP_LEVEL_H

#include "systemc.h"

#include "comparateur.h"
#include "doubleur.h"
#include "filtre1.h"
#include "filtre2.h"
#include "carre.h"
#include "racine.h"
#include "sc_store.h"
#include "constant.h"

#include <iostream>

SC_MODULE(top_level)
{
public:
    sc_in 		< bool > 	clk;
    sc_in 		< bool > 	reset;

    sc_fifo_in 	< float > 	e;
    sc_fifo_out	< float > 	s;

	SC_CTOR(Encoder):
		doubleur	("dédoubleur"	),
		comparateur	("comparaison"	),
		filtre1		("filtrage1"	),
		carre		("carre"		),
		filtre2		("filtrage2"	),
		racine		("racine"		),
		sig1		("fifo1", 8192	),
		sig2		("fifo2", 8192	),
		sig3		("fifo3", 8192	),
		sig4		("fifo4", 8192	),
		sig5		("fifo5", 8192	),
		sig6		("fifo6", 8192	),
		doub1		("doub1", 8192	),
		doub2		("doub2", 8192	)
	{
		doubleur.clk(clk); 		doubleur.reset(reset);
		comparateur.clk(clk);  	comparateur.reset(reset);
		dct.clk(clk); dct.reset(reset);
		qtz.clk(clk); qtz.reset(reset);
		zig.clk(clk); zig.reset(reset);

		yuv.e(e);
		yuv.s(s2); /* => */ ser.e(s2);
		ser.s(s3); /* => */ dct.e(s3);
		dct.s(s4); /* => */ qtz.e(s4);
		qtz.s(s5); /* => */ zig.e(s5);
		zig.s(s);
	}

private:
    RGB2YUV    yuv;
    Serializer ser;
    DCT2d      dct;
    Quantizer  qtz;
	ZigZag     zig;

	sc_fifo<int>  s2;
	sc_fifo<int>  s3;
	sc_fifo<int>  s4;
	sc_fifo<int>  s5;
};

#endif
