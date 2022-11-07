#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/203

/opt/NONMEM/nm74gf/run/nmfe74 203.ctl  203.lst  -parafile=203.pnm -maxlim=2
