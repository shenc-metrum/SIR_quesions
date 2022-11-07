#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/082

/opt/NONMEM/nm74gf/run/nmfe74 082.ctl  082.lst  -parafile=082.pnm -maxlim=2
