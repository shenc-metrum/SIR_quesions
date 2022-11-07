#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/032

/opt/NONMEM/nm74gf/run/nmfe74 032.ctl  032.lst  -parafile=032.pnm -maxlim=2
