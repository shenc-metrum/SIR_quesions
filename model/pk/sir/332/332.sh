#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/332

/opt/NONMEM/nm74gf/run/nmfe74 332.ctl  332.lst  -parafile=332.pnm -maxlim=2
