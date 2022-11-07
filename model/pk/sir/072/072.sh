#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/072

/opt/NONMEM/nm74gf/run/nmfe74 072.ctl  072.lst  -parafile=072.pnm -maxlim=2
