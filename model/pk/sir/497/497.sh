#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/497

/opt/NONMEM/nm74gf/run/nmfe74 497.ctl  497.lst  -parafile=497.pnm -maxlim=2
