#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/098

/opt/NONMEM/nm74gf/run/nmfe74 098.ctl  098.lst  -parafile=098.pnm -maxlim=2
