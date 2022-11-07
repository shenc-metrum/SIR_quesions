#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/135

/opt/NONMEM/nm74gf/run/nmfe74 135.ctl  135.lst  -parafile=135.pnm -maxlim=2
