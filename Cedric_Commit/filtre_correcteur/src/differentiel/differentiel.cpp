#include "differentiel.h"

void Differential::substract() {
    while(true) {
        float in = data_in.read();
        data_out.write(in - cst);
    }
}