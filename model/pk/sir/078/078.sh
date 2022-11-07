#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/078

/opt/NONMEM/nm74gf/run/nmfe74 078.ctl  078.lst  -parafile=078.pnm -maxlim=2
