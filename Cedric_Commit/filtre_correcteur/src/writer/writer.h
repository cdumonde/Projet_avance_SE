#ifndef WRITER_H
#define WRITER_H

#include <iostream>
#include <fstream>  

using namespace std;

class Writer
{
public:
	Writer(string fileName);
	~Writer();
	void store(float y);
private:
	string m_fileName;
	ofstream *out;
};

#endif