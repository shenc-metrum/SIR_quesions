#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/111

/opt/NONMEM/nm74gf/run/nmfe74 111.ctl  111.lst  -parafile=111.pnm -maxlim=2
