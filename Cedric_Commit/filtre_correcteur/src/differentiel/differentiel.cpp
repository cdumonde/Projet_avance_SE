#include "differentiel.h"

void Differential::substract() {
    while(true) {
        data_out.write(data_in.read() - cst);
    }
}