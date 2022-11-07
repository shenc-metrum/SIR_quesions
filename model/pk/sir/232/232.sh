#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/232

/opt/NONMEM/nm74gf/run/nmfe74 232.ctl  232.lst  -parafile=232.pnm -maxlim=2
