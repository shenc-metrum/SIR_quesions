#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/173

/opt/NONMEM/nm74gf/run/nmfe74 173.ctl  173.lst  -parafile=173.pnm -maxlim=2
