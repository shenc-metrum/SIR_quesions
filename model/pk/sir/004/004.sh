#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/004

/opt/NONMEM/nm74gf/run/nmfe74 004.ctl  004.lst  -parafile=004.pnm -maxlim=2
