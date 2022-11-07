#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/090

/opt/NONMEM/nm74gf/run/nmfe74 090.ctl  090.lst  -parafile=090.pnm -maxlim=2
