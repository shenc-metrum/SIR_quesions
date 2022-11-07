#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/437

/opt/NONMEM/nm74gf/run/nmfe74 437.ctl  437.lst  -parafile=437.pnm -maxlim=2
