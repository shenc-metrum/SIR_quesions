#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/236

/opt/NONMEM/nm74gf/run/nmfe74 236.ctl  236.lst  -parafile=236.pnm -maxlim=2
