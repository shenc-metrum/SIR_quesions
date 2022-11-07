#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/190

/opt/NONMEM/nm74gf/run/nmfe74 190.ctl  190.lst  -parafile=190.pnm -maxlim=2
