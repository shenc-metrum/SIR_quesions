#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/145

/opt/NONMEM/nm74gf/run/nmfe74 145.ctl  145.lst  -parafile=145.pnm -maxlim=2
