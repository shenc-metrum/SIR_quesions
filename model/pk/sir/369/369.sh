#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/369

/opt/NONMEM/nm74gf/run/nmfe74 369.ctl  369.lst  -parafile=369.pnm -maxlim=2
