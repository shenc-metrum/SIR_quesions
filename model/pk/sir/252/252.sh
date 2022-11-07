#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/252

/opt/NONMEM/nm74gf/run/nmfe74 252.ctl  252.lst  -parafile=252.pnm -maxlim=2
