#include "correcteur.h"

void Controller::control() {
    while(true) {
        data_out.write(data_in.read() * gain);
    }
}