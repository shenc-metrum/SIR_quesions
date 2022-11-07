#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/310

/opt/NONMEM/nm74gf/run/nmfe74 310.ctl  310.lst  -parafile=310.pnm -maxlim=2
