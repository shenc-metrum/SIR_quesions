#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/356

/opt/NONMEM/nm74gf/run/nmfe74 356.ctl  356.lst  -parafile=356.pnm -maxlim=2
