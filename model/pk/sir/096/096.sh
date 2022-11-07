#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/096

/opt/NONMEM/nm74gf/run/nmfe74 096.ctl  096.lst  -parafile=096.pnm -maxlim=2
