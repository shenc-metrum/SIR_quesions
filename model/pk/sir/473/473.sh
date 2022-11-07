#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/473

/opt/NONMEM/nm74gf/run/nmfe74 473.ctl  473.lst  -parafile=473.pnm -maxlim=2
