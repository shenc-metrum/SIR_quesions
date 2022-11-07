#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/112

/opt/NONMEM/nm74gf/run/nmfe74 112.ctl  112.lst  -parafile=112.pnm -maxlim=2
