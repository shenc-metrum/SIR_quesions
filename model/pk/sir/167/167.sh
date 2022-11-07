#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/167

/opt/NONMEM/nm74gf/run/nmfe74 167.ctl  167.lst  -parafile=167.pnm -maxlim=2
