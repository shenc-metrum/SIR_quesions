#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/420

/opt/NONMEM/nm74gf/run/nmfe74 420.ctl  420.lst  -parafile=420.pnm -maxlim=2
