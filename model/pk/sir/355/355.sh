#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/355

/opt/NONMEM/nm74gf/run/nmfe74 355.ctl  355.lst  -parafile=355.pnm -maxlim=2
