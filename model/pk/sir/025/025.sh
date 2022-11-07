#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/025

/opt/NONMEM/nm74gf/run/nmfe74 025.ctl  025.lst  -parafile=025.pnm -maxlim=2
