#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/429

/opt/NONMEM/nm74gf/run/nmfe74 429.ctl  429.lst  -parafile=429.pnm -maxlim=2
