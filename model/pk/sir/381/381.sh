#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/381

/opt/NONMEM/nm74gf/run/nmfe74 381.ctl  381.lst  -parafile=381.pnm -maxlim=2
