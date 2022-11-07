#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/392

/opt/NONMEM/nm74gf/run/nmfe74 392.ctl  392.lst  -parafile=392.pnm -maxlim=2
