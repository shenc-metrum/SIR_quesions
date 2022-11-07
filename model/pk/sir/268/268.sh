#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/268

/opt/NONMEM/nm74gf/run/nmfe74 268.ctl  268.lst  -parafile=268.pnm -maxlim=2
