#include "detector.h"

void Detector::detect() {
    while (true) {
        float output;
        float in0, in1 = 0.0;
        in0 = data_in0.read();
        if(data_in1.num_available()) in1 = data_in1.read();
        if(in0 <= in1) {
            output = 0.0;
        }
        else {
            output = 1.0;
        }
    }
}