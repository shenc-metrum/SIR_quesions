#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/335

/opt/NONMEM/nm74gf/run/nmfe74 335.ctl  335.lst  -parafile=335.pnm -maxlim=2
