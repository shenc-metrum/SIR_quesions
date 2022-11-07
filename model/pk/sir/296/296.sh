#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/296

/opt/NONMEM/nm74gf/run/nmfe74 296.ctl  296.lst  -parafile=296.pnm -maxlim=2
