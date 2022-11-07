#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/314

/opt/NONMEM/nm74gf/run/nmfe74 314.ctl  314.lst  -parafile=314.pnm -maxlim=2
