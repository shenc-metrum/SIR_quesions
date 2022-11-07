#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/454

/opt/NONMEM/nm74gf/run/nmfe74 454.ctl  454.lst  -parafile=454.pnm -maxlim=2
