#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/382

/opt/NONMEM/nm74gf/run/nmfe74 382.ctl  382.lst  -parafile=382.pnm -maxlim=2
