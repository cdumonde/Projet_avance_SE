#include "passeBas.h"

using namespace std;

void PasseBas::filter() {
    float x0 = 0;
    float y0 = 0;
    float x1 = 0;
    float y1 = 0;
    while(true) {
        x0 = data_in.read();
        y0 = (x0 + x1)/4096.0f + 2047.0f/2048.0f*y1;
        data_out.write(y0);
        x1 = x0;
        y1 = y0;
    }
}