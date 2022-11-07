#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/182

/opt/NONMEM/nm74gf/run/nmfe74 182.ctl  182.lst  -parafile=182.pnm -maxlim=2
