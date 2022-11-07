#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/212

/opt/NONMEM/nm74gf/run/nmfe74 212.ctl  212.lst  -parafile=212.pnm -maxlim=2
