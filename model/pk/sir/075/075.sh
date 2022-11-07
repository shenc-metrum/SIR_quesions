#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/075

/opt/NONMEM/nm74gf/run/nmfe74 075.ctl  075.lst  -parafile=075.pnm -maxlim=2
