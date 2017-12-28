#ifndef __GENE_H__
#define __GENE_H__

#include "systemc.h"
#include <iostream>
#include <fstream>

SC_MODULE(gene)
{

private:

    std::string filename;

public:

    sc_fifo_out<float> value;

    SC_CTOR(gene)
    {
        SC_THREAD(FileLoad);
    }

    void FileLoad();
    void set_Filename( std::string _filename );

};

#endif
