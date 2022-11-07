#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/132

/opt/NONMEM/nm74gf/run/nmfe74 132.ctl  132.lst  -parafile=132.pnm -maxlim=2
