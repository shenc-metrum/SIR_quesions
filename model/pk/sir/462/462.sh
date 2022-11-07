#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/462

/opt/NONMEM/nm74gf/run/nmfe74 462.ctl  462.lst  -parafile=462.pnm -maxlim=2
