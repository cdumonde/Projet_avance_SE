#ifndef WRITER_H
#define WRITER_H

#include "systemc.h"
#include <iostream>
#include <fstream>  

using namespace std;

SC_MODULE( Writer ){
private:
	string filename;
public:
	sc_fifo_in<float> 	data_in;
	sc_fifo_out<float> 	data_out;

	SC_CTOR( Writer ){
		SC_THREAD( store );
	}

	void store();
	void setFileName( string _filename );
};

#endif