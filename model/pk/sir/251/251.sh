#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/251

/opt/NONMEM/nm74gf/run/nmfe74 251.ctl  251.lst  -parafile=251.pnm -maxlim=2
