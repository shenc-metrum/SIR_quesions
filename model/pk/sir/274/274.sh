#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/274

/opt/NONMEM/nm74gf/run/nmfe74 274.ctl  274.lst  -parafile=274.pnm -maxlim=2
