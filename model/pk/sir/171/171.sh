#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/171

/opt/NONMEM/nm74gf/run/nmfe74 171.ctl  171.lst  -parafile=171.pnm -maxlim=2
