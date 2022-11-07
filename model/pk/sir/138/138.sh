#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/138

/opt/NONMEM/nm74gf/run/nmfe74 138.ctl  138.lst  -parafile=138.pnm -maxlim=2
