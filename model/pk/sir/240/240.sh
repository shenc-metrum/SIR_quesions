#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/240

/opt/NONMEM/nm74gf/run/nmfe74 240.ctl  240.lst  -parafile=240.pnm -maxlim=2
