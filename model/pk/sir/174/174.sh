#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/174

/opt/NONMEM/nm74gf/run/nmfe74 174.ctl  174.lst  -parafile=174.pnm -maxlim=2
