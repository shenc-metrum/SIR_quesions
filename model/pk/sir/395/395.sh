#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/395

/opt/NONMEM/nm74gf/run/nmfe74 395.ctl  395.lst  -parafile=395.pnm -maxlim=2
