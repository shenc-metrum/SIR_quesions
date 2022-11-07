#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/060

/opt/NONMEM/nm74gf/run/nmfe74 060.ctl  060.lst  -parafile=060.pnm -maxlim=2
