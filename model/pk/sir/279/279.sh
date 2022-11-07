#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/279

/opt/NONMEM/nm74gf/run/nmfe74 279.ctl  279.lst  -parafile=279.pnm -maxlim=2
