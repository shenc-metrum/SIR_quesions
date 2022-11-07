#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/452

/opt/NONMEM/nm74gf/run/nmfe74 452.ctl  452.lst  -parafile=452.pnm -maxlim=2
