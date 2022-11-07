#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/107

/opt/NONMEM/nm74gf/run/nmfe74 107.ctl  107.lst  -parafile=107.pnm -maxlim=2
