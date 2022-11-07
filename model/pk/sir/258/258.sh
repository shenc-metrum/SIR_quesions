#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/258

/opt/NONMEM/nm74gf/run/nmfe74 258.ctl  258.lst  -parafile=258.pnm -maxlim=2
