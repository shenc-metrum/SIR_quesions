#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/087

/opt/NONMEM/nm74gf/run/nmfe74 087.ctl  087.lst  -parafile=087.pnm -maxlim=2
