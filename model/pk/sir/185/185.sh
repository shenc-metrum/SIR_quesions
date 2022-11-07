#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/185

/opt/NONMEM/nm74gf/run/nmfe74 185.ctl  185.lst  -parafile=185.pnm -maxlim=2
