#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/216

/opt/NONMEM/nm74gf/run/nmfe74 216.ctl  216.lst  -parafile=216.pnm -maxlim=2
