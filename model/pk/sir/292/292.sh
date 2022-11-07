#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/292

/opt/NONMEM/nm74gf/run/nmfe74 292.ctl  292.lst  -parafile=292.pnm -maxlim=2
