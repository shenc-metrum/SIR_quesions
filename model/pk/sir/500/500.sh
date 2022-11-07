#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/500

/opt/NONMEM/nm74gf/run/nmfe74 500.ctl  500.lst  -parafile=500.pnm -maxlim=2
