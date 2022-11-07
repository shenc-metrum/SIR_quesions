#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/010

/opt/NONMEM/nm74gf/run/nmfe74 010.ctl  010.lst  -parafile=010.pnm -maxlim=2
