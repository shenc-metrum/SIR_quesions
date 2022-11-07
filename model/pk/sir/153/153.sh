#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/153

/opt/NONMEM/nm74gf/run/nmfe74 153.ctl  153.lst  -parafile=153.pnm -maxlim=2
