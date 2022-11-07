#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/125

/opt/NONMEM/nm74gf/run/nmfe74 125.ctl  125.lst  -parafile=125.pnm -maxlim=2
