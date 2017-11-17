#include "sc_store.h"

void sc_store::setFilename( std::string filename_ ){
	filename = filename_;
}

void sc_store::do_sc_store( ){

	std::ofstream outfile ( filename );

	while( true ){
		x = e.read();
		outfile << x << endl;
		s.write( x );
	}

	outfile.close();
}