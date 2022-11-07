#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/231

/opt/NONMEM/nm74gf/run/nmfe74 231.ctl  231.lst  -parafile=231.pnm -maxlim=2
