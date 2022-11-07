#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/230

/opt/NONMEM/nm74gf/run/nmfe74 230.ctl  230.lst  -parafile=230.pnm -maxlim=2
