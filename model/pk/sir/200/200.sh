#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/200

/opt/NONMEM/nm74gf/run/nmfe74 200.ctl  200.lst  -parafile=200.pnm -maxlim=2
