#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/289

/opt/NONMEM/nm74gf/run/nmfe74 289.ctl  289.lst  -parafile=289.pnm -maxlim=2
