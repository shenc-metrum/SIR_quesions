#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/073

/opt/NONMEM/nm74gf/run/nmfe74 073.ctl  073.lst  -parafile=073.pnm -maxlim=2
