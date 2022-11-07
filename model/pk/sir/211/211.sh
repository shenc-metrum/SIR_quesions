#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/211

/opt/NONMEM/nm74gf/run/nmfe74 211.ctl  211.lst  -parafile=211.pnm -maxlim=2
