#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/431

/opt/NONMEM/nm74gf/run/nmfe74 431.ctl  431.lst  -parafile=431.pnm -maxlim=2
