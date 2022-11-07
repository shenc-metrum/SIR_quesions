#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/484

/opt/NONMEM/nm74gf/run/nmfe74 484.ctl  484.lst  -parafile=484.pnm -maxlim=2
