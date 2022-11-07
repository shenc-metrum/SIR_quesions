#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/239

/opt/NONMEM/nm74gf/run/nmfe74 239.ctl  239.lst  -parafile=239.pnm -maxlim=2
