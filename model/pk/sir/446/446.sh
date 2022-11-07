#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/446

/opt/NONMEM/nm74gf/run/nmfe74 446.ctl  446.lst  -parafile=446.pnm -maxlim=2
