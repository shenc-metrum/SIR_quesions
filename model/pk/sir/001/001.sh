#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/001

/opt/NONMEM/nm74gf/run/nmfe74 001.ctl  001.lst  -parafile=001.pnm -maxlim=2
