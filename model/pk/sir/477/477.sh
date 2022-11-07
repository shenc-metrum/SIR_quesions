#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/477

/opt/NONMEM/nm74gf/run/nmfe74 477.ctl  477.lst  -parafile=477.pnm -maxlim=2
