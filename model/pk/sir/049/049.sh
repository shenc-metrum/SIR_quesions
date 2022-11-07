#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/049

/opt/NONMEM/nm74gf/run/nmfe74 049.ctl  049.lst  -parafile=049.pnm -maxlim=2
