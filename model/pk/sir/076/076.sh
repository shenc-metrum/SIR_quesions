#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/076

/opt/NONMEM/nm74gf/run/nmfe74 076.ctl  076.lst  -parafile=076.pnm -maxlim=2
