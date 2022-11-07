#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/119

/opt/NONMEM/nm74gf/run/nmfe74 119.ctl  119.lst  -parafile=119.pnm -maxlim=2
