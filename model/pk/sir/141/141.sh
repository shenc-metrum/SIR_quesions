#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/141

/opt/NONMEM/nm74gf/run/nmfe74 141.ctl  141.lst  -parafile=141.pnm -maxlim=2
