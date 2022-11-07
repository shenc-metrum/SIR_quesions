#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/426

/opt/NONMEM/nm74gf/run/nmfe74 426.ctl  426.lst  -parafile=426.pnm -maxlim=2
