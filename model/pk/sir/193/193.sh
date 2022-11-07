#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/193

/opt/NONMEM/nm74gf/run/nmfe74 193.ctl  193.lst  -parafile=193.pnm -maxlim=2
