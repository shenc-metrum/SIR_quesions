#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/101

/opt/NONMEM/nm74gf/run/nmfe74 101.ctl  101.lst  -parafile=101.pnm -maxlim=2
