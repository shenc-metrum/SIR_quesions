#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/470

/opt/NONMEM/nm74gf/run/nmfe74 470.ctl  470.lst  -parafile=470.pnm -maxlim=2
