#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/331

/opt/NONMEM/nm74gf/run/nmfe74 331.ctl  331.lst  -parafile=331.pnm -maxlim=2
