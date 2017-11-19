#ifndef READER_H
#define READER_H

#include <iostream>
#include <fstream>
#include <sstream>
#include "systemc.h"

using namespace std;

SC_MODULE( Reader ){
private:
    string m_fileName;
public:
    sc_fifo_out<float> data_out;
	SC_CTOR(Reader){
		SC_THREAD( readFile);
	}

	void readFile();
    void setFileName(string fileName);
};

#endif //READER_H