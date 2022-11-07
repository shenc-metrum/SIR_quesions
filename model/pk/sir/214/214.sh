#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/214

/opt/NONMEM/nm74gf/run/nmfe74 214.ctl  214.lst  -parafile=214.pnm -maxlim=2
