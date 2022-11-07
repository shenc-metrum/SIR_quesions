#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/024

/opt/NONMEM/nm74gf/run/nmfe74 024.ctl  024.lst  -parafile=024.pnm -maxlim=2
