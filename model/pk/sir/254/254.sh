#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/254

/opt/NONMEM/nm74gf/run/nmfe74 254.ctl  254.lst  -parafile=254.pnm -maxlim=2
