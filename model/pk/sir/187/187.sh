#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/187

/opt/NONMEM/nm74gf/run/nmfe74 187.ctl  187.lst  -parafile=187.pnm -maxlim=2
