#ifndef __DOUBLEUR__
#define __DOUBLEUR__

#include "systemc.h"

SC_MODULE( doubleur ){

private:
    float to_split;

public:

    sc_fifo_in < float > e;
    sc_fifo_out < float > s1, s2;

      SC_CTOR( doubleur ){
        SC_THREAD(do_split);
      }

      void do_split();
};
#endif /* __DOULEUR__ */
