#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/162

/opt/NONMEM/nm74gf/run/nmfe74 162.ctl  162.lst  -parafile=162.pnm -maxlim=2
