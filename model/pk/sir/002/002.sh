#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/002

/opt/NONMEM/nm74gf/run/nmfe74 002.ctl  002.lst  -parafile=002.pnm -maxlim=2
