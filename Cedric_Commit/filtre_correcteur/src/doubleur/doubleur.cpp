#include "doubleur.h"

void Doubleur::cpy() {
    while(true)
    {
        float in = data_in.read();
        data_out0.write(in);
        data_out1.write(in);
    }
}