#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/407

/opt/NONMEM/nm74gf/run/nmfe74 407.ctl  407.lst  -parafile=407.pnm -maxlim=2
