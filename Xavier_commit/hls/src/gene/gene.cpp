#include "gene.h"

using namespace std;

void gene::set_Filename(std::string _filename)
{
    filename = _filename;
}

void gene::FileLoad()
{

    string value_line;
    ifstream myFlux(filename.c_str());
    if(myFlux)
    {
        while(!myFlux.eof()){
            getline(myFlux, value_line);
            for( int i = 0; i < NB_CHANNEL; i++ )
                value.write(stof(value_line));
            wait( 25, SC_US );
        }
    }
    else
    {
        cout << "ERREUR: Impossible d'ouvrir le fichier." << endl;
    }
}
