#include "sc_store.h"

using namespace std;

void sc_store::setFilename( string filename_ )
{
    filename = filename_;
}

void sc_store::do_sc_store( ){

    ofstream outfile ( filename.c_str() );

    while( true ){
        x = e.read();
        outfile << x << endl;
        s.write( x );
    }
}
