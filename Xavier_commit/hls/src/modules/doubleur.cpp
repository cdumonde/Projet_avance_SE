#include "doubleur.h"

void doubleur::do_split(){

  while(1){
    to_split = e.read();

    s1.write(to_split);
    s2.write(to_split);
  }
}
