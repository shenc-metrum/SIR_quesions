#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/235

/opt/NONMEM/nm74gf/run/nmfe74 235.ctl  235.lst  -parafile=235.pnm -maxlim=2
