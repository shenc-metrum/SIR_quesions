#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/238

/opt/NONMEM/nm74gf/run/nmfe74 238.ctl  238.lst  -parafile=238.pnm -maxlim=2
