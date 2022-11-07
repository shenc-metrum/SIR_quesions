#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/045

/opt/NONMEM/nm74gf/run/nmfe74 045.ctl  045.lst  -parafile=045.pnm -maxlim=2
