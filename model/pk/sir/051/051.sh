#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/051

/opt/NONMEM/nm74gf/run/nmfe74 051.ctl  051.lst  -parafile=051.pnm -maxlim=2
