#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/360

/opt/NONMEM/nm74gf/run/nmfe74 360.ctl  360.lst  -parafile=360.pnm -maxlim=2
