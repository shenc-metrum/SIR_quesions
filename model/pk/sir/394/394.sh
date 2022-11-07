#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/394

/opt/NONMEM/nm74gf/run/nmfe74 394.ctl  394.lst  -parafile=394.pnm -maxlim=2
