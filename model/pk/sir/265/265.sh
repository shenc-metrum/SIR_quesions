#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/265

/opt/NONMEM/nm74gf/run/nmfe74 265.ctl  265.lst  -parafile=265.pnm -maxlim=2
