#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/218

/opt/NONMEM/nm74gf/run/nmfe74 218.ctl  218.lst  -parafile=218.pnm -maxlim=2
