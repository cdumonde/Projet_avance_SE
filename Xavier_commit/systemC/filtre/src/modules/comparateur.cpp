#include "comparateur.h"

void comparateur::do_comp(void){

  while(1){
    in1     = abs(e1.read());
    seuil   = e2.read();

    if( seuil <= in1 ){
        result = 1;
    }else {
        result = 0;
    }
    s.write(result);
  }
}
