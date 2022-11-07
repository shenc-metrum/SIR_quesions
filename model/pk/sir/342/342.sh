#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/342

/opt/NONMEM/nm74gf/run/nmfe74 342.ctl  342.lst  -parafile=342.pnm -maxlim=2
