#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/121

/opt/NONMEM/nm74gf/run/nmfe74 121.ctl  121.lst  -parafile=121.pnm -maxlim=2
