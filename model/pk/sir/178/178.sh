#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/178

/opt/NONMEM/nm74gf/run/nmfe74 178.ctl  178.lst  -parafile=178.pnm -maxlim=2
