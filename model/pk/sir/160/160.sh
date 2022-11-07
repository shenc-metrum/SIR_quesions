#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/160

/opt/NONMEM/nm74gf/run/nmfe74 160.ctl  160.lst  -parafile=160.pnm -maxlim=2
