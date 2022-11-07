#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/281

/opt/NONMEM/nm74gf/run/nmfe74 281.ctl  281.lst  -parafile=281.pnm -maxlim=2
