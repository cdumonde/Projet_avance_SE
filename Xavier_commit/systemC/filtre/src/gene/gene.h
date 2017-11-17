#ifndef GENE_H
#define GENE_H

#define SC_INCLUDE_FX
#include "systemc.h"

SC_MODULE( gene ){
	sc_fifo_out 	< sc_int<16> >	s;
	//sc_out 	< sc_int<16> >	s2;
	//sc_out 	< sc_int<16> >	s3;

	void do_gene();

	SC_CTOR( gene ){
		SC_THREAD( do_gene );
	}
};

#endif