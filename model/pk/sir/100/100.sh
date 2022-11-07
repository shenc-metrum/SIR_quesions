#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/100

/opt/NONMEM/nm74gf/run/nmfe74 100.ctl  100.lst  -parafile=100.pnm -maxlim=2
