#include "reader.h"

using namespace std;

float convertStringToDouble(string line) {
    stringstream ss;
    float tmp;
    ss.str(line);
    ss >> tmp;
    return tmp;
}
void Reader::readFile() {
    string value_line;
    ifstream myFlux(m_fileName);
    if(myFlux)
    {
        while(!myFlux.eof()){
            getline(myFlux, value_line);
            data_out.write(stof(value_line));
            wait( 25, SC_US );
        }
    }
    else
    {
        cout << "ERREUR: Impossible d'ouvrir le fichier." << endl;
    }
}
void Reader::setFileName(string fileName) {
    m_fileName = fileName;
}