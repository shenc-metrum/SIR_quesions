#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/220

/opt/NONMEM/nm74gf/run/nmfe74 220.ctl  220.lst  -parafile=220.pnm -maxlim=2
