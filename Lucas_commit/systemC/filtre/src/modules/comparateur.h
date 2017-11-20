#ifndef __COMPARATEUR__
#define __COMPARATEUR__

#include "systemc.h"
//#include <iostream>

SC_MODULE(comparateur)
{

private:

  float in1;
  float seuil;
  bool result;

public:

  sc_fifo_in< float > e1;
  sc_fifo_in< float > e2;
  sc_fifo_out< bool > s;

  SC_CTOR(comparateur){
      SC_THREAD(do_comp);
  }

  void do_comp(void);
};
#endif /* __COMPARATEUR__ */
