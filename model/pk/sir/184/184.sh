#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/184

/opt/NONMEM/nm74gf/run/nmfe74 184.ctl  184.lst  -parafile=184.pnm -maxlim=2
