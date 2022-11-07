#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/179

/opt/NONMEM/nm74gf/run/nmfe74 179.ctl  179.lst  -parafile=179.pnm -maxlim=2
