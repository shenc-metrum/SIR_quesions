#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/059

/opt/NONMEM/nm74gf/run/nmfe74 059.ctl  059.lst  -parafile=059.pnm -maxlim=2
