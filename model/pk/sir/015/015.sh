#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/015

/opt/NONMEM/nm74gf/run/nmfe74 015.ctl  015.lst  -parafile=015.pnm -maxlim=2
