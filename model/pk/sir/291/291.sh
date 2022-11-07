#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/291

/opt/NONMEM/nm74gf/run/nmfe74 291.ctl  291.lst  -parafile=291.pnm -maxlim=2
