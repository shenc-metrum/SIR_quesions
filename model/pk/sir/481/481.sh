#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/481

/opt/NONMEM/nm74gf/run/nmfe74 481.ctl  481.lst  -parafile=481.pnm -maxlim=2
