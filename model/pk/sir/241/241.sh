#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/241

/opt/NONMEM/nm74gf/run/nmfe74 241.ctl  241.lst  -parafile=241.pnm -maxlim=2
