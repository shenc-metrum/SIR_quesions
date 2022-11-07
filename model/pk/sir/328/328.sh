#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/328

/opt/NONMEM/nm74gf/run/nmfe74 328.ctl  328.lst  -parafile=328.pnm -maxlim=2
