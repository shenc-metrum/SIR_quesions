#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/285

/opt/NONMEM/nm74gf/run/nmfe74 285.ctl  285.lst  -parafile=285.pnm -maxlim=2
