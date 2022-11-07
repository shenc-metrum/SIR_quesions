#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/061

/opt/NONMEM/nm74gf/run/nmfe74 061.ctl  061.lst  -parafile=061.pnm -maxlim=2
