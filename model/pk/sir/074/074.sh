#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/074

/opt/NONMEM/nm74gf/run/nmfe74 074.ctl  074.lst  -parafile=074.pnm -maxlim=2
