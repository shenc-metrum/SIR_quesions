#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/361

/opt/NONMEM/nm74gf/run/nmfe74 361.ctl  361.lst  -parafile=361.pnm -maxlim=2
