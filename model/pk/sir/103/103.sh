#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/103

/opt/NONMEM/nm74gf/run/nmfe74 103.ctl  103.lst  -parafile=103.pnm -maxlim=2
