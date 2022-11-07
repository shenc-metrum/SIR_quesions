#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/176

/opt/NONMEM/nm74gf/run/nmfe74 176.ctl  176.lst  -parafile=176.pnm -maxlim=2
