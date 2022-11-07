#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/248

/opt/NONMEM/nm74gf/run/nmfe74 248.ctl  248.lst  -parafile=248.pnm -maxlim=2
