#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/377

/opt/NONMEM/nm74gf/run/nmfe74 377.ctl  377.lst  -parafile=377.pnm -maxlim=2
