#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/347

/opt/NONMEM/nm74gf/run/nmfe74 347.ctl  347.lst  -parafile=347.pnm -maxlim=2
