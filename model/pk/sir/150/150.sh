#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/150

/opt/NONMEM/nm74gf/run/nmfe74 150.ctl  150.lst  -parafile=150.pnm -maxlim=2
