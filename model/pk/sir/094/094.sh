#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/094

/opt/NONMEM/nm74gf/run/nmfe74 094.ctl  094.lst  -parafile=094.pnm -maxlim=2
