#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/439

/opt/NONMEM/nm74gf/run/nmfe74 439.ctl  439.lst  -parafile=439.pnm -maxlim=2
