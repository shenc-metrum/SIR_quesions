#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/326

/opt/NONMEM/nm74gf/run/nmfe74 326.ctl  326.lst  -parafile=326.pnm -maxlim=2
