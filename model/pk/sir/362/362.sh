#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/362

/opt/NONMEM/nm74gf/run/nmfe74 362.ctl  362.lst  -parafile=362.pnm -maxlim=2
