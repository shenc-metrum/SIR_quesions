#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/202

/opt/NONMEM/nm74gf/run/nmfe74 202.ctl  202.lst  -parafile=202.pnm -maxlim=2
