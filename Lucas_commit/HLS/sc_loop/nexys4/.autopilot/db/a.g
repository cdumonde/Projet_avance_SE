#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/lucas/Documents/Projet_avance_SE/Lucas_commit/HLS/sc_loop/nexys4/.autopilot/db/a.g.bc ${1+"$@"}
