#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/140

/opt/NONMEM/nm74gf/run/nmfe74 140.ctl  140.lst  -parafile=140.pnm -maxlim=2
