#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/133

/opt/NONMEM/nm74gf/run/nmfe74 133.ctl  133.lst  -parafile=133.pnm -maxlim=2
