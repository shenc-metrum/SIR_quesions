#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/276

/opt/NONMEM/nm74gf/run/nmfe74 276.ctl  276.lst  -parafile=276.pnm -maxlim=2
