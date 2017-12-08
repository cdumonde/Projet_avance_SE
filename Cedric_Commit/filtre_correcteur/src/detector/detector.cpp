#include "detector.h"

void Detector::detect() {
    int cpt = 0;
    int cpt_print = 0;
    while (true) {
        float output;
        float in0, in1 = 0.0;
        in0 = data_in0.read();
        cpt++;
        if(cpt %(2200 * 100) == 0) {
            cpt_print ++;
            std::cout << cpt_print << "%" << std::endl;
        }
        if(data_in1.num_available()) in1 = data_in1.read();
        if(in0 <= in1) {
            output = 0.0;
        }
        else {
            output = 1.0;
        }
    }
}