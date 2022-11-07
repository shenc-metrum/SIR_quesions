#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/262

/opt/NONMEM/nm74gf/run/nmfe74 262.ctl  262.lst  -parafile=262.pnm -maxlim=2
