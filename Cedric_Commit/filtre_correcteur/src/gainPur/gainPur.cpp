#include "gainPur.h"

void GainPur::amplify() {
    while(true) {
        data_out.write(data_in.read() * cst);
    }
}