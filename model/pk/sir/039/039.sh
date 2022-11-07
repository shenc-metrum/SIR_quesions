#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/039

/opt/NONMEM/nm74gf/run/nmfe74 039.ctl  039.lst  -parafile=039.pnm -maxlim=2
