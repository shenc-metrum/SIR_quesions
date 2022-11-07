#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/008

/opt/NONMEM/nm74gf/run/nmfe74 008.ctl  008.lst  -parafile=008.pnm -maxlim=2
