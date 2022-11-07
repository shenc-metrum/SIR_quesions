#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/445

/opt/NONMEM/nm74gf/run/nmfe74 445.ctl  445.lst  -parafile=445.pnm -maxlim=2
