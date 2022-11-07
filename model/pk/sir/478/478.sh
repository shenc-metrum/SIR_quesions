#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/478

/opt/NONMEM/nm74gf/run/nmfe74 478.ctl  478.lst  -parafile=478.pnm -maxlim=2
