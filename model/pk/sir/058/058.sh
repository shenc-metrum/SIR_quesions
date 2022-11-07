#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/058

/opt/NONMEM/nm74gf/run/nmfe74 058.ctl  058.lst  -parafile=058.pnm -maxlim=2
