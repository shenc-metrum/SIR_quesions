#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/084

/opt/NONMEM/nm74gf/run/nmfe74 084.ctl  084.lst  -parafile=084.pnm -maxlim=2
