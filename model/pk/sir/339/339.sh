#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/339

/opt/NONMEM/nm74gf/run/nmfe74 339.ctl  339.lst  -parafile=339.pnm -maxlim=2
