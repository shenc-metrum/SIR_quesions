#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/397

/opt/NONMEM/nm74gf/run/nmfe74 397.ctl  397.lst  -parafile=397.pnm -maxlim=2
