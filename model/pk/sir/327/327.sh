#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/327

/opt/NONMEM/nm74gf/run/nmfe74 327.ctl  327.lst  -parafile=327.pnm -maxlim=2
