#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/120

/opt/NONMEM/nm74gf/run/nmfe74 120.ctl  120.lst  -parafile=120.pnm -maxlim=2
