#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/146

/opt/NONMEM/nm74gf/run/nmfe74 146.ctl  146.lst  -parafile=146.pnm -maxlim=2
