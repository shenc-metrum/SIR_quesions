#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/053

/opt/NONMEM/nm74gf/run/nmfe74 053.ctl  053.lst  -parafile=053.pnm -maxlim=2
