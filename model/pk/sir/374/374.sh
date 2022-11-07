#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/374

/opt/NONMEM/nm74gf/run/nmfe74 374.ctl  374.lst  -parafile=374.pnm -maxlim=2
