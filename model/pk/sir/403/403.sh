#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/403

/opt/NONMEM/nm74gf/run/nmfe74 403.ctl  403.lst  -parafile=403.pnm -maxlim=2
