#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/009

/opt/NONMEM/nm74gf/run/nmfe74 009.ctl  009.lst  -parafile=009.pnm -maxlim=2
