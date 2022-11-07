#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/307

/opt/NONMEM/nm74gf/run/nmfe74 307.ctl  307.lst  -parafile=307.pnm -maxlim=2
