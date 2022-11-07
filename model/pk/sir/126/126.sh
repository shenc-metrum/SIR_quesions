#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/126

/opt/NONMEM/nm74gf/run/nmfe74 126.ctl  126.lst  -parafile=126.pnm -maxlim=2
