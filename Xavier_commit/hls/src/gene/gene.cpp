#include "gene.h"

using namespace std;

void gene::set_Filename(std::string _filename)
{
    filename = _filename;
}

void gene::FileLoad()
{

    string value_line;
    //cout << filename.c_str() << endl;
    ifstream myFlux(filename.c_str());
    if(myFlux)
    {
        while(!myFlux.eof()){
            getline(myFlux, value_line);
            value.write( atof(value_line.c_str()) );
            wait( 25, SC_US );
        }
    }
    else
    {
        cout << "ERREUR: Impossible d'ouvrir le fichier." << endl;
    }
}
