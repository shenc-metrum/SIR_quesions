#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/129

/opt/NONMEM/nm74gf/run/nmfe74 129.ctl  129.lst  -parafile=129.pnm -maxlim=2
