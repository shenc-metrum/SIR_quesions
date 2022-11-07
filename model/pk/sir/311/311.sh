#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/311

/opt/NONMEM/nm74gf/run/nmfe74 311.ctl  311.lst  -parafile=311.pnm -maxlim=2
