#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/266

/opt/NONMEM/nm74gf/run/nmfe74 266.ctl  266.lst  -parafile=266.pnm -maxlim=2
