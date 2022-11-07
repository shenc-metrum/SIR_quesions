#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/183

/opt/NONMEM/nm74gf/run/nmfe74 183.ctl  183.lst  -parafile=183.pnm -maxlim=2
