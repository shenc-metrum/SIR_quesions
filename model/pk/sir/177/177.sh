#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/177

/opt/NONMEM/nm74gf/run/nmfe74 177.ctl  177.lst  -parafile=177.pnm -maxlim=2
