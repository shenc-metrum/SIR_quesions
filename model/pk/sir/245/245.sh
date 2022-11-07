#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/245

/opt/NONMEM/nm74gf/run/nmfe74 245.ctl  245.lst  -parafile=245.pnm -maxlim=2
