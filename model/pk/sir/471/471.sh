#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/471

/opt/NONMEM/nm74gf/run/nmfe74 471.ctl  471.lst  -parafile=471.pnm -maxlim=2
