#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/227

/opt/NONMEM/nm74gf/run/nmfe74 227.ctl  227.lst  -parafile=227.pnm -maxlim=2
