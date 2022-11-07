#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/364

/opt/NONMEM/nm74gf/run/nmfe74 364.ctl  364.lst  -parafile=364.pnm -maxlim=2
