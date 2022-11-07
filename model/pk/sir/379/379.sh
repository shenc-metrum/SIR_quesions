#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/379

/opt/NONMEM/nm74gf/run/nmfe74 379.ctl  379.lst  -parafile=379.pnm -maxlim=2
