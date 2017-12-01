#include "passeHaut.h"

using namespace std;

void PasseHaut::filter() {
    float x0 = 0.0f;
    float y0 = 0.0f;
    float x1 = 0.0f;
    float y1 = 0.0f;
    while(true) {
        x0 = data_in.read();
        y0 = (x0 - x1)*63.0f/64.0f + 31.0f/32.0f*y1;
        data_out.write(y0);
        x1 = x0;
        y1 = y0;
    }
}