#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/476

/opt/NONMEM/nm74gf/run/nmfe74 476.ctl  476.lst  -parafile=476.pnm -maxlim=2
