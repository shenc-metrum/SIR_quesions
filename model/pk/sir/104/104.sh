#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/104

/opt/NONMEM/nm74gf/run/nmfe74 104.ctl  104.lst  -parafile=104.pnm -maxlim=2
