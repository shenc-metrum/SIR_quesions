#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/114

/opt/NONMEM/nm74gf/run/nmfe74 114.ctl  114.lst  -parafile=114.pnm -maxlim=2
