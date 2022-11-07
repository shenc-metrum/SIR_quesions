#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/492

/opt/NONMEM/nm74gf/run/nmfe74 492.ctl  492.lst  -parafile=492.pnm -maxlim=2
