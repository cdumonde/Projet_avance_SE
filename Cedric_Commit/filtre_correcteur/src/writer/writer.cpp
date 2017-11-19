#include "writer.h"

void Writer::setFileName( string _filename ){
	filename = _filename;
}

void Writer::store(){

	std::ofstream outfile (filename);

	while(true) {
		float tmp = data_in.read();
		outfile << tmp << endl;
		data_out.write(tmp);
	}
	outfile.close();
}