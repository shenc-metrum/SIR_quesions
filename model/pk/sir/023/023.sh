#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/023

/opt/NONMEM/nm74gf/run/nmfe74 023.ctl  023.lst  -parafile=023.pnm -maxlim=2
