#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/228

/opt/NONMEM/nm74gf/run/nmfe74 228.ctl  228.lst  -parafile=228.pnm -maxlim=2
