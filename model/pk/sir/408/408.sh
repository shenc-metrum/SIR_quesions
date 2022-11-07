#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/408

/opt/NONMEM/nm74gf/run/nmfe74 408.ctl  408.lst  -parafile=408.pnm -maxlim=2
