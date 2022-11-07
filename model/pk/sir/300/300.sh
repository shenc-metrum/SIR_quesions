#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/300

/opt/NONMEM/nm74gf/run/nmfe74 300.ctl  300.lst  -parafile=300.pnm -maxlim=2
