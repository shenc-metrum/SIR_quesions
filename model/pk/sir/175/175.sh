#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/175

/opt/NONMEM/nm74gf/run/nmfe74 175.ctl  175.lst  -parafile=175.pnm -maxlim=2
