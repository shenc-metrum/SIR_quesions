#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/283

/opt/NONMEM/nm74gf/run/nmfe74 283.ctl  283.lst  -parafile=283.pnm -maxlim=2
