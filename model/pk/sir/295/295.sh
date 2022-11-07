#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/295

/opt/NONMEM/nm74gf/run/nmfe74 295.ctl  295.lst  -parafile=295.pnm -maxlim=2
