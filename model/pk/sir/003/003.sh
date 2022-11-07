#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/003

/opt/NONMEM/nm74gf/run/nmfe74 003.ctl  003.lst  -parafile=003.pnm -maxlim=2
