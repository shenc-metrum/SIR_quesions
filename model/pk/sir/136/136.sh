#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/136

/opt/NONMEM/nm74gf/run/nmfe74 136.ctl  136.lst  -parafile=136.pnm -maxlim=2
