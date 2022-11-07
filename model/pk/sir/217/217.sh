#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/217

/opt/NONMEM/nm74gf/run/nmfe74 217.ctl  217.lst  -parafile=217.pnm -maxlim=2
