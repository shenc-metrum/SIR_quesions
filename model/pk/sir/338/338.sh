#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/338

/opt/NONMEM/nm74gf/run/nmfe74 338.ctl  338.lst  -parafile=338.pnm -maxlim=2
