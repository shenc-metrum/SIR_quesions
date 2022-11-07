#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/005

/opt/NONMEM/nm74gf/run/nmfe74 005.ctl  005.lst  -parafile=005.pnm -maxlim=2
