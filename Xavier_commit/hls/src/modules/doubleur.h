#ifndef __DOUBLEUR__
#define __DOUBLEUR__

#include "systemc.h"
#include "constant.h"

SC_MODULE( doubleur ){

private:
    float to_split;

public:
    sc_in 		< bool > 	clk;
    sc_in 		< bool > 	reset;

    sc_fifo_in 	< float > e;
    sc_fifo_out < float > s1, s2;

      SC_CTOR( doubleur ){
        SC_CTHREAD( do_split, clk.pos() );
        reset_signal_is(reset, true);
      }

      void do_split();
};
#endif /* __DOULEUR__ */
