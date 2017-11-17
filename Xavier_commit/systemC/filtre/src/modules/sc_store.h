#ifndef SC_STORE_H
#define SC_STORE_H

#define	 SC_INCLUDE_FX
#include "systemc.h"
#include <iostream>
#include <fstream>  

SC_MODULE( sc_store ){
private:
	sc_int<16> x;
	std::string filename;
public:
	sc_fifo_in 		< sc_int<16> >	e;
	sc_fifo_out 	< sc_int<16> >	s;

	SC_CTOR( sc_store ){
		SC_THREAD( do_sc_store );
	}

	void do_sc_store( );
	void setFilename( std::string filename_ );
};

#endif