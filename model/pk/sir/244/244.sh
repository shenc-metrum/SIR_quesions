#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/244

/opt/NONMEM/nm74gf/run/nmfe74 244.ctl  244.lst  -parafile=244.pnm -maxlim=2
