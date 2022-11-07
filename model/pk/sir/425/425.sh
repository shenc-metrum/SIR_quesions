#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/425

/opt/NONMEM/nm74gf/run/nmfe74 425.ctl  425.lst  -parafile=425.pnm -maxlim=2
