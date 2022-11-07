#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/453

/opt/NONMEM/nm74gf/run/nmfe74 453.ctl  453.lst  -parafile=453.pnm -maxlim=2
