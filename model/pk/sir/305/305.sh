#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/305

/opt/NONMEM/nm74gf/run/nmfe74 305.ctl  305.lst  -parafile=305.pnm -maxlim=2
