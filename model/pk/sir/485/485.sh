#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/485

/opt/NONMEM/nm74gf/run/nmfe74 485.ctl  485.lst  -parafile=485.pnm -maxlim=2
