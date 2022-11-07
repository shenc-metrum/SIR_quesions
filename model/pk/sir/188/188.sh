#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/188

/opt/NONMEM/nm74gf/run/nmfe74 188.ctl  188.lst  -parafile=188.pnm -maxlim=2
