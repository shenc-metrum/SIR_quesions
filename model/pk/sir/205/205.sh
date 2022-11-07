#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/205

/opt/NONMEM/nm74gf/run/nmfe74 205.ctl  205.lst  -parafile=205.pnm -maxlim=2
