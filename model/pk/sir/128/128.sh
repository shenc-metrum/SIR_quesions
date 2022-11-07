#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/128

/opt/NONMEM/nm74gf/run/nmfe74 128.ctl  128.lst  -parafile=128.pnm -maxlim=2
