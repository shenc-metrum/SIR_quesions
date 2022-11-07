#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/034

/opt/NONMEM/nm74gf/run/nmfe74 034.ctl  034.lst  -parafile=034.pnm -maxlim=2
