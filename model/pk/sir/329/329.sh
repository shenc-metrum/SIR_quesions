#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/329

/opt/NONMEM/nm74gf/run/nmfe74 329.ctl  329.lst  -parafile=329.pnm -maxlim=2
