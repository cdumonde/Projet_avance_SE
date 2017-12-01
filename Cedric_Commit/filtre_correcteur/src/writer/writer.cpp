#include "writer.h"

Writer::Writer(string fileName) {
	m_fileName = fileName + ".txt";
	out = new ofstream(m_fileName);
}
Writer::~Writer() {
	out->close();
}
void  Writer::store(float y) {
	*out << y << endl;
}