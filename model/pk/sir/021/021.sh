#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/021

/opt/NONMEM/nm74gf/run/nmfe74 021.ctl  021.lst  -parafile=021.pnm -maxlim=2
