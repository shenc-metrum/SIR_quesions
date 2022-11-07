#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/233

/opt/NONMEM/nm74gf/run/nmfe74 233.ctl  233.lst  -parafile=233.pnm -maxlim=2
