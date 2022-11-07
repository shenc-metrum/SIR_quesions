#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/210

/opt/NONMEM/nm74gf/run/nmfe74 210.ctl  210.lst  -parafile=210.pnm -maxlim=2
