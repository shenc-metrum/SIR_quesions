#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/186

/opt/NONMEM/nm74gf/run/nmfe74 186.ctl  186.lst  -parafile=186.pnm -maxlim=2
