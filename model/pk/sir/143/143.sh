#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/143

/opt/NONMEM/nm74gf/run/nmfe74 143.ctl  143.lst  -parafile=143.pnm -maxlim=2
