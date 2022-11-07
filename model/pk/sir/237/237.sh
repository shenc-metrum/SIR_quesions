#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/237

/opt/NONMEM/nm74gf/run/nmfe74 237.ctl  237.lst  -parafile=237.pnm -maxlim=2
