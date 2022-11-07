#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/194

/opt/NONMEM/nm74gf/run/nmfe74 194.ctl  194.lst  -parafile=194.pnm -maxlim=2
