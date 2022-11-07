#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/243

/opt/NONMEM/nm74gf/run/nmfe74 243.ctl  243.lst  -parafile=243.pnm -maxlim=2
