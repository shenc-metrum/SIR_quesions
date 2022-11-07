#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/223

/opt/NONMEM/nm74gf/run/nmfe74 223.ctl  223.lst  -parafile=223.pnm -maxlim=2
