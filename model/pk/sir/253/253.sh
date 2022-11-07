#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/253

/opt/NONMEM/nm74gf/run/nmfe74 253.ctl  253.lst  -parafile=253.pnm -maxlim=2
