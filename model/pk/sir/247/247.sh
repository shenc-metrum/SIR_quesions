#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/247

/opt/NONMEM/nm74gf/run/nmfe74 247.ctl  247.lst  -parafile=247.pnm -maxlim=2
