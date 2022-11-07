#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/197

/opt/NONMEM/nm74gf/run/nmfe74 197.ctl  197.lst  -parafile=197.pnm -maxlim=2
