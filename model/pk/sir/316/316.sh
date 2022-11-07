#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/316

/opt/NONMEM/nm74gf/run/nmfe74 316.ctl  316.lst  -parafile=316.pnm -maxlim=2
