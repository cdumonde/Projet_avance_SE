#include "correcteur.h"


void Controller::control() {
    float x = 0;
    float y = 0;
    while(true) {
        x = data_in.read();
        y += x * gain;
        data_out.write(y);
    }
}