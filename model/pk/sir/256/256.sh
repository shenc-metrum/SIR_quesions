#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/256

/opt/NONMEM/nm74gf/run/nmfe74 256.ctl  256.lst  -parafile=256.pnm -maxlim=2
