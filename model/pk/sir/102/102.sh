#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/102

/opt/NONMEM/nm74gf/run/nmfe74 102.ctl  102.lst  -parafile=102.pnm -maxlim=2
