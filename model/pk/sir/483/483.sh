#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/483

/opt/NONMEM/nm74gf/run/nmfe74 483.ctl  483.lst  -parafile=483.pnm -maxlim=2
