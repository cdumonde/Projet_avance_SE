#ifndef SC_STORE_H
#define SC_STORE_H

#define	 SC_INCLUDE_FX
#include "systemc.h"
#include <iostream>
#include <fstream>  
#include "constant.h"

SC_MODULE( sc_store ){
private:
	float x;
	std::string filename1;//, filename2;
public:
	sc_fifo_in 		< float >	e;
	sc_fifo_out 	< float >	s;

	SC_CTOR( sc_store ){
		SC_THREAD( do_sc_store );
	}

	void do_sc_store( );
	void setFilename( std::string filename1_);//, std::string filename2_);
};

#endif