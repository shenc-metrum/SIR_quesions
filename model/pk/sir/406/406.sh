#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/406

/opt/NONMEM/nm74gf/run/nmfe74 406.ctl  406.lst  -parafile=406.pnm -maxlim=2
