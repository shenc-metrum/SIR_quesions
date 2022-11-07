#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/465

/opt/NONMEM/nm74gf/run/nmfe74 465.ctl  465.lst  -parafile=465.pnm -maxlim=2
