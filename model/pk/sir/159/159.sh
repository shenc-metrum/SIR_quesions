#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/159

/opt/NONMEM/nm74gf/run/nmfe74 159.ctl  159.lst  -parafile=159.pnm -maxlim=2
