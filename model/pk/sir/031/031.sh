#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/031

/opt/NONMEM/nm74gf/run/nmfe74 031.ctl  031.lst  -parafile=031.pnm -maxlim=2
