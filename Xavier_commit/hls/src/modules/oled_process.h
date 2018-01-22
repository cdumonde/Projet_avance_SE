#ifndef OLED_PROCESS_H
#define OLED_PROCESS_H

#include "systemc.h"


SC_MODULE( oled_process ){
private:
  float sum;
  float	save;
public:
  sc_in       	< bool >    	clk;
  sc_in       	< bool >    	reset;
  sc_out      	< bool >   		en;
  sc_out 		< sc_int<6> >	s;
  sc_fifo_in  	< float >    	e;
  sc_fifo_out 	< float >  		s_f;

  SC_CTOR( oled_process ){
    SC_CTHREAD( do_oled_process, clk.pos() );
    reset_signal_is( reset, true );
  }

  void do_oled_process();
};

#endif