#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/148

/opt/NONMEM/nm74gf/run/nmfe74 148.ctl  148.lst  -parafile=148.pnm -maxlim=2
