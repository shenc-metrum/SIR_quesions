#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/416

/opt/NONMEM/nm74gf/run/nmfe74 416.ctl  416.lst  -parafile=416.pnm -maxlim=2
