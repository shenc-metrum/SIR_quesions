#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/041

/opt/NONMEM/nm74gf/run/nmfe74 041.ctl  041.lst  -parafile=041.pnm -maxlim=2
