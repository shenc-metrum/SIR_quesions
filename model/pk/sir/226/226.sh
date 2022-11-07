#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/226

/opt/NONMEM/nm74gf/run/nmfe74 226.ctl  226.lst  -parafile=226.pnm -maxlim=2
