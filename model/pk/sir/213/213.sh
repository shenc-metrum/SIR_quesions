#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/213

/opt/NONMEM/nm74gf/run/nmfe74 213.ctl  213.lst  -parafile=213.pnm -maxlim=2
