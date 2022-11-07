#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/192

/opt/NONMEM/nm74gf/run/nmfe74 192.ctl  192.lst  -parafile=192.pnm -maxlim=2
