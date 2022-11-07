#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/050

/opt/NONMEM/nm74gf/run/nmfe74 050.ctl  050.lst  -parafile=050.pnm -maxlim=2
