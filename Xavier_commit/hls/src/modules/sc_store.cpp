#include "sc_store.h"

void sc_store::setFilename( std::string filename1_){//, std::string filename2_ ){
	filename1 = filename1_;
	//filename2 = filename2_;
}

void sc_store::do_sc_store( ){

	std::ofstream outfile1 ( filename1 );
	//std::ofstream outfile2 ( filename2 );

	while( true ){
		x = e.read();
		outfile1 << x << endl;
		s.write( x );

		//x = e.read();
		//outfile2 << x << endl;
		//s.write( x );
	}

	outfile1.close();
	//outfile2.close();
}