#include "gainPur.h"

void GainPur::amplify() {
    float x = 0;
    float y = 0;
    while(true) {
        x = data_in.read();
        y = x * CONST_GP;
        data_out.write(y);
    }
}
