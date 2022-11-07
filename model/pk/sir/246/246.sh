#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/246

/opt/NONMEM/nm74gf/run/nmfe74 246.ctl  246.lst  -parafile=246.pnm -maxlim=2
