#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/349

/opt/NONMEM/nm74gf/run/nmfe74 349.ctl  349.lst  -parafile=349.pnm -maxlim=2
