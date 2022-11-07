#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/352

/opt/NONMEM/nm74gf/run/nmfe74 352.ctl  352.lst  -parafile=352.pnm -maxlim=2
