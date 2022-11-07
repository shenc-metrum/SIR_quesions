#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/459

/opt/NONMEM/nm74gf/run/nmfe74 459.ctl  459.lst  -parafile=459.pnm -maxlim=2
