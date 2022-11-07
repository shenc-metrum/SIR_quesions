#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/070

/opt/NONMEM/nm74gf/run/nmfe74 070.ctl  070.lst  -parafile=070.pnm -maxlim=2
