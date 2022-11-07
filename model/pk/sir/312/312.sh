#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/312

/opt/NONMEM/nm74gf/run/nmfe74 312.ctl  312.lst  -parafile=312.pnm -maxlim=2
